package com.ximeo.nazaru.zhivorost365.web;

import com.ximeo.nazaru.zhivorost365.domain.models.User;
import com.ximeo.nazaru.zhivorost365.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin/users")
public class UserController {

    private UserService usrServ;

    @RequestMapping(method = RequestMethod.GET)
    public String showAllUsers(Model uiModel) {
        uiModel.addAttribute("id", "2");
        uiModel.addAttribute("users", usrServ.getAllUsers());
        return "private/users";
    }

    @RequestMapping(method = RequestMethod.GET, params = "new")
    public String showNewUserForm(Model uiModel) {
        User usr = new User();
        uiModel.addAttribute("userForm", usr);
        return "private/userform";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String showEditForm(@PathVariable("id") Long id, Model uiModel) {
        User usr = usrServ.getUser(id);
        uiModel.addAttribute("userForm", usr);
        return "private/userform";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String saveUser(User usr) {
        usrServ.addUser(usr);
        return "redirect:/admin/users";
    }

    @RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") int id) {
        usrServ.delUser(id);
        return "redirect:/admin/users";
    }

    @Autowired
    public void setUsrServ(UserService usrServ) {
        this.usrServ = usrServ;
    }
}