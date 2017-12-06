package com.ximeo.nazaru.zhivorost365.web.controllers;

import com.ximeo.nazaru.zhivorost365.domain.dto.Message;
import com.ximeo.nazaru.zhivorost365.domain.dto.PasswInfo;
import com.ximeo.nazaru.zhivorost365.domain.models.Irrigation;
import com.ximeo.nazaru.zhivorost365.service.IrrigationService;
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
public class IrrigationController {

    private static final Logger logger = LoggerFactory.getLogger(IrrigationController.class);

    private IrrigationService irrServ;
    private QuestionService questServ;
    private OrderService ordServ;

    @RequestMapping(value="/admins/irrs", method = RequestMethod.GET)
    public String showIrrigations(Model uiModel) {
        logger.info("showIrrigation()");
        uiModel.addAttribute("irrs", irrServ.getAll());
        uiModel.addAttribute("irrForm", new Irrigation());
        uiModel.addAttribute("count", questServ.getUnreadedQuestionCount());
        uiModel.addAttribute("count1", ordServ.getUnreadedOrderCount());
        uiModel.addAttribute("passwForm", new PasswInfo());
        return "admins/irrs";
    }

    @RequestMapping(value = "/admins/irrs", method = RequestMethod.POST)
    public String saveIrrigation(Irrigation model, RedirectAttributes redAttr) {
        logger.info("saveIrrigation(): {}", model);
        Message msg = new Message();
        try {
            irrServ.addOne(model);
            msg.setType("success");
            if (model.isNew()) msg.setMessage("Новая система орошения добавлена.");
            else msg.setMessage("Изменения системы орошения сохранены.");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("saveIrrigation()");
            msg.setType("danger");
            msg.setMessage("Ошибка системы. Попробуйте повторить позже.");
            return "admins/irrs";
        }
        redAttr.addFlashAttribute("msg", msg);
        return "redirect:../admins/irrs";
    }

    @RequestMapping(value = "/admins/irrs/{id}/delete", method = RequestMethod.GET)
    private String deleteIrrigation(@PathVariable("id")long id, RedirectAttributes redAttr) {
        logger.info("deleteIrrigation()");
        Message msg = new Message();
        try {
            irrServ.delOne(id);
            msg.setType("success");
            msg.setMessage("Метод орошения успешно удален.");
        } catch (Exception e) {
            logger.error("deleteIrrigation()");
            msg.setType("danger");
            msg.setMessage("Ощибка. Поробуйте повторить позже.");
            e.printStackTrace();
            return "admins/irrs";
        }
        redAttr.addFlashAttribute("msg", msg);
        return "redirect:../admins/irrs";
    }

    @Autowired
    public void setIrrServ(IrrigationService irrServ) {
        this.irrServ = irrServ;
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