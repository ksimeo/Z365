package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.dto.Message;
import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.Culture;
import com.ximeo.nazaru.zhivorost365.service.CultureService;
import com.ximeo.nazaru.zhivorost365.service.OrderService;
import com.ximeo.nazaru.zhivorost365.service.QuestionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class CulturesController {

    private static final Logger logger = LoggerFactory.getLogger(CulturesController.class);
    private CultureService cultServ;
    private QuestionService questServ;
    private OrderService ordServ;

    @RequestMapping(value = "/admins/cultures", method = RequestMethod.GET)
    public String showCulturesList(Model uiModel) {
        logger.info("showCulturesList()");
        uiModel.addAttribute("cults", cultServ.getCultures());
        uiModel.addAttribute("cultForm", new Culture());
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
        return "admins/cults";
    }

    @RequestMapping(value = "/admins/cultures", method = RequestMethod.POST)
    public String saveCulture(Culture cult, Model uiModel, RedirectAttributes redAttr) {
        logger.info("saveCulture()");
        Message msg = new Message();
        System.err.println(cult);
        try {
            cultServ.addCulture(cult);
            msg.setType("success");
            if (cult.isNew()) msg.setMessage("Новая культура успешно добавлена.");
            else msg.setMessage("Изменения культуры успешно сохранены.");
        } catch (Exception e) {
            msg.setType("danger");
            msg.setMessage("Ошибка системы. Попробуйте повторить позже.");
            e.printStackTrace();
            logger.error("saveCulture()");
            uiModel.addAttribute("msg", msg);
            return "admins/cults";
        }
        redAttr.addFlashAttribute("msg", msg);
        return "redirect:../admins/cultures";
    }

    @RequestMapping(value = "/admins/culture/{id}/delete", method = RequestMethod.GET)
    public String deleteCulture(@PathVariable("id") long id, RedirectAttributes redAttr) {
        logger.info("deleteCulture()");
        Message msg = new Message();
        try {
            cultServ.delCulture(id);
            msg.setType("success");
            msg.setMessage("Растительная культура успешно удалена.");
        } catch (Exception e) {
            logger.error("deleteCulture()");
            e.printStackTrace();
            msg.setType("danger");
            msg.setMessage("Ошибка. Попробуйте еще раз позже.");
            return "admins/cults";
        }
        redAttr.addFlashAttribute("msg", msg);
        return "redirect:../admins/cults";
    }

    @RequestMapping(value = "/admins/cultures/{id}")
    public String showCulture(@PathVariable("id") long id, Model uiModel) {
        logger.info("showCulture()");
        uiModel.addAttribute("cultures", cultServ.getCulture(id));
        return "admins/cult";
    }

    @Autowired
    public void setCultServ(CultureService cultServ) {
        this.cultServ = cultServ;
    }

    @Autowired
    public void setQuestServ(QuestionService questServ) {
        this.questServ = questServ;
    }

    @Autowired
    public void setOrdServ(OrderService ordServ) {
        this.ordServ = ordServ;
    }
}