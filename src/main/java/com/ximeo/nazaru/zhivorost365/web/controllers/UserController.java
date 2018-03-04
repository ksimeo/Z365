package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.User;
import com.ximeo.nazaru.zhivorost365.domain.models.UserRole;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import com.ximeo.nazaru.zhivorost365.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.apache.commons.io.IOUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;

@Controller
public class UserController {
    private final Logger logger = LoggerFactory.getLogger(UserController.class);

    private UserService usrServ;
    private OrderService ordServ;
    private QuestionService questServ;

    @RequestMapping(value="/admins/users" ,method = RequestMethod.GET)
    public String showUsersList(Model uiModel) {
        logger.info("showUsersList()");
        uiModel.addAttribute("users", usrServ.getAllUsers());
        uiModel.addAttribute("usrForm", new User());
        uiModel.addAttribute("roles", UserRole.values());
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
        return "admins/usrs";
    }

    @RequestMapping(value="/admins/users" ,method = RequestMethod.GET, params = "form")
    public String showNewUserForm(Model uiModel, HttpServletRequest req) {
        User usr = new User();
        UserRole[] userRoles = UserRole.values();
        uiModel.addAttribute("roles", userRoles);
        uiModel.addAttribute("userForm", usr);
        return "admins/usrfrm";
    }

    @RequestMapping(value = "/admins/users/{id}", method = RequestMethod.GET)
    public String showEditForm(@PathVariable("id") Long id, Model uiModel) {
        User usr = usrServ.getUser(id);
        uiModel.addAttribute("userForm", usr);
        return "admins/usrfrm";
    }

    @RequestMapping(value = "/admins/users", method = RequestMethod.POST)
    public String saveUser(User usr, @RequestParam(value = "file", required = false) Part file) {

        if (file != null) {
            logger.info("File name: " + file.getName());
            logger.info("File size: " + file.getSize());
            logger.info("File content type: " + file.getContentType());
            byte[] fileContent = null;
            try {
                InputStream inputStream = file.getInputStream();
                if (inputStream == null) logger.info("File input stream is null");
                fileContent = IOUtils.toByteArray(inputStream);
                usr.setImage(fileContent);
            } catch (IOException ex) {
                logger.error("Error saving uploaded file");
            }
        }
        usrServ.addUser(usr);
        return "redirect:/admin/users";
    }

    @RequestMapping(value = "/admins/users/{id}/delete", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") int id) {
        usrServ.delUser(id);
        return "redirect:/admin/users";
    }

    @RequestMapping(value = "/admins/users/{id}/pswrd", method = RequestMethod.GET)
    public String showChangePasswordForm(@PathVariable("id") long id,Model uiModel) {
        PasswInfo model = new PasswInfo();
        uiModel.addAttribute("passwForm", model);
        return "admins/chpswrd";
    }

    @RequestMapping(value = "/admins/users", method = RequestMethod.POST, params = "chpswrd")
    public String saveNewPassword(PasswInfo model, HttpSession session) {
        User usr = (User)session.getAttribute("user");
        if ((usr.getPassword()).equals(model.getOldPassword())) {
            usr.setPassword(model.getNewPassword());
            usrServ.addUser(usr);
            return "redirect:/admin";
        }
        return "private/chpswrd";
    }

    @RequestMapping(value = "/admins/users/{id}/image", method = RequestMethod.GET)
    @ResponseBody
    public byte[] downloadImage(@PathVariable("id") Long id) {
        User usr = usrServ.getUser(id);
        if (usr.getImage() != null) {
            logger.info("Downloading photo for id: {} with size: {}", usr.getId(), usr.getImage());
        }
        return usr.getImage();
    }

    @Autowired
    public void setUsrServ(UserService usrServ) {
        this.usrServ = usrServ;
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }

    @Autowired
    public void setQuestServ(QuestionService questServ) {
        this.questServ = questServ;
    }
}