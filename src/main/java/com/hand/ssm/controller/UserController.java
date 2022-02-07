package com.hand.ssm.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hand.ssm.dao.CarsDao;
import com.hand.ssm.dao.orderDao;
import com.hand.ssm.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hand.ssm.dao.UserDao;
import com.hand.ssm.dao.InfoDao;

@Controller
public class UserController {
    @Autowired
    UserDao userdao;
    @Autowired
    InfoDao infodao;

    @Autowired
    CarsDao carsDao;

    @Autowired
    orderDao orderdao;

    public String idd="";

    @RequestMapping("/login1")
    public String login1(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
        return "main_";
    }
    @RequestMapping("/car_type")
    public String car_type(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
        return "car_type";
    }
    @RequestMapping("/login2")
    public String login2(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
        return "index";
    }

    @RequestMapping("/sign1")
    public String sign1(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
        return "zhuce";
    }

    @RequestMapping("/delete1")
    public String delete1(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
        return "zhuxiao";
    }
    @RequestMapping("/logout")
    public String logout(ModelAndView modelAndView, HttpServletRequest request, HttpSession session){
        idd="";
        return "index";
    }

    @ResponseBody
    @RequestMapping("/selectAllja")
    public List<User> selectAllja(Model model, HttpServletRequest request, HttpServletResponse response){
        List<User> users=userdao.selectAll();
        return users;
    }


    @ResponseBody
    @RequestMapping("/cartype111")
    public List<Car> cartype111(Model model, HttpServletRequest request, HttpServletResponse response){
        List<Car> users=carsDao.getcarsbyrentpriceAll();
        return users;
    }

    @RequestMapping("/sign")
    public String sign(Model model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
        String id=request.getParameter("user_id");
        String pwd=request.getParameter("user_pwd");
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String add=request.getParameter("add");
        String sex=request.getParameter("sex");

        User user=new User();

        user.setUser_id(id);
        user.setUser_pwd(pwd);
        user.setName_(name);
        user.setPhone(phone);
        user.setAdd_(add);
        user.setSex(sex);



        userdao.addUser(user);

        return "index";

    }
    @RequestMapping("/delete")
    public String delete(Model model, HttpServletRequest request, HttpServletResponse response){
        String delete_id=request.getParameter("delete_id");
        String delete_pwd=request.getParameter("delete_pwd");

        List<User> users = userdao.selectAll();
        model.addAttribute("users",users);
        for(int i = 0;i < users.size();i ++) {
            if(users.get(i).getUser_id().equals(delete_id) && users.get(i).getUser_pwd().equals(delete_pwd))
            {
                userdao.deleteById(users.get(i).getUser_id());
                return "success2";
            }
            else
            {
                if(i == users.size()-1)
                return "fail2";
            }

        }
        return "fail2";
    }

    @RequestMapping("/login")
    public String login(Model model, HttpServletRequest request, HttpSession session){
        String login_id=request.getParameter("login_id");
        String login_pwd=request.getParameter("login_pwd");

		List<User> users = userdao.selectAll();
		model.addAttribute("users",users);

        List<Car> cars = carsDao.selectcar();
        model.addAttribute("cars", cars);
        System.out.println(cars);


		for(int i = 0;i < users.size();i ++) {
			if(users.get(i).getUser_id().equals(login_id) && users.get(i).getUser_pwd().equals(login_pwd))
            {
                session.setAttribute("login_id",login_id);
                idd=login_id;
                String Lid = session.getAttribute("login_id").toString();
                User user;
                user=userdao.selectByIdd(Lid);

                Info info=new Info();
                info.setLoginip("0:0:0:0:0:0:0:7");
                info.setUsername(user.getName_());
                info.setUserid(user.getUser_id());
                infodao.addinfo(info);

                model.addAttribute("user", user);
                return "main_";
            }
			else
            {
                if(i == users.size()-1)
                return "fail";
            }

		}
        return "fail";
    }

    @RequestMapping("/agreement")
    public String agreement(Model model, HttpServletRequest request, HttpServletResponse response){
        User user=new User();
        user=userdao.getagrement();
        model.addAttribute("user", user);
        return "agreement";
    }

    @ResponseBody
    @RequestMapping("/agreement11")
    public User agreement11(Model model, HttpServletRequest request, HttpServletResponse response){
        User user=new User();
        user=userdao.getagrement();
        return user;
    }

    @ResponseBody
    @RequestMapping("/getname")
    public User getname(Model model,HttpSession session){
        String Lid = session.getAttribute("login_id").toString();
        User user;
        user=userdao.selectByIdd(Lid);
        return user;
    }
    @RequestMapping("/aboutus")
    public String aboutus(Model model, HttpServletRequest request, HttpServletResponse response){
        User user;
        user=userdao.getaboutus();
        model.addAttribute("user", user);
        return "aboutus";
    }

    @RequestMapping("/feedback")
    public String feedback(Model model, HttpServletRequest request, HttpServletResponse response){
        return "feedback";
    }

    @RequestMapping("/feedbackok")
    public String feedbackok(Model model, HttpServletRequest request, HttpServletResponse response){
        String name=request.getParameter("advicename");
        String sex=request.getParameter("advicesex");
        String phone=request.getParameter("advicephone");
        String email=request.getParameter("adviceemail");
        String adress=request.getParameter("adviceaddress");
        String advice=request.getParameter("advices");

        Feedback feedback = new Feedback();

        feedback.setName(name);
        feedback.setSex(sex);
        feedback.setPhone(phone);
        feedback.setEmail(email);
        feedback.setAddress(adress);
        feedback.setAdvice(advice);

        userdao.addAdvice(feedback);

        return "aboutus";
    }

    @RequestMapping("/chage")//更改个人信息
    public String chage(Model model, HttpServletRequest request, HttpSession session){
        try{
            String name_=request.getParameter("uname");
            String sex=request.getParameter("usex");
            String phone=request.getParameter("uphone");
            String add_=request.getParameter("uadd");
            User user=new User();
            user.setUser_id(session.getAttribute("login_id").toString());
            user.setName_(name_);
            user.setSex(sex);
            user.setPhone(phone);
            user.setAdd_(add_);
            userdao.updateUser(user);

            user=userdao.selectByIdd(session.getAttribute("login_id").toString());
            model.addAttribute("user", user);
            return "self_chage";
        }catch (Exception e)
        {
            return "plzlogin";
        }

    }

    @RequestMapping("/wechat")
    public String wechat(Model model, HttpServletRequest request, HttpServletResponse response){
        User user;
        user=userdao.getwechatimg();
        model.addAttribute("user", user);
        return "login_wechat";
    }

    @RequestMapping("/self")//个人信息
    public String self(Model model, HttpServletRequest request,HttpSession session){
        try{
            User user;
            user=userdao.selectByIdd(session.getAttribute("login_id").toString());
            model.addAttribute("user", user);
            return "self";
        }catch (Exception e)
        {
            return "plzlogin";
        }

    }
    @RequestMapping("/self_chage")//修改个人信息
    public String self_chage(Model model, HttpServletRequest request, HttpSession session){
        try{
            User user;
            user=userdao.selectByIdd(session.getAttribute("login_id").toString());
            model.addAttribute("user", user);
            return "self_chage";
        }catch (Exception e)
        {
            return "plzlogin";
        }

    }
    @RequestMapping("/self_info")//登录信息
    public String self_info(Model model, HttpServletRequest request, HttpServletResponse response){
        List<Info> infoo = infodao.selectAll();
        model.addAttribute("infoo", infoo);
        return "self_info";
    }

    @RequestMapping("/self_order")//订单表
    public String self_order(Model model, HttpServletRequest request, HttpServletResponse response,HttpSession session){
        try{
            List<order_> order_ = orderdao.getorderAll(session.getAttribute("login_id").toString());
            model.addAttribute("order_", order_);
            return "self_order";
        }catch (Exception e)
        {
            return "plzlogin";
        }

    }
    @RequestMapping("/findinfo")//查询登录信息
    public String findinfo(Model model, HttpServletRequest request, HttpServletResponse response){
        String name =request.getParameter("username");
        if (name!="")//查询不为空的话
        {
            List<Info> infoo = infodao.findAll(name);
            model.addAttribute("infoo", infoo);
        }
        else
        {
            List<Info> infoo = infodao.selectAll();
            model.addAttribute("infoo", infoo);
        }
        return "self_info";
    }


}

