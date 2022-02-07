package com.hand.ssm.controller;
import com.hand.ssm.dao.CarsDao;
import com.hand.ssm.dao.UserDao;
import com.hand.ssm.dao.orderDao;
import com.hand.ssm.dto.Car;
import com.hand.ssm.dto.User;
import com.hand.ssm.dto.order_;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class carController {
	
	@Autowired
	CarsDao cardao;
	@Autowired
	orderDao orderdao;
	@Autowired
	UserDao userDao;


	@RequestMapping("/addcar")//跳转
	public String addcar(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		return "addCar_";
	}
	@RequestMapping("/serch")//跳转
	public String serch(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		return "serch";
	}
	@RequestMapping("/serch2")//跳转
	public String serch2(ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		return "serch2";
	}

	@RequestMapping("/listcar")//租车列表
	public String listcar(Model model,HttpServletRequest request, HttpServletResponse response){
		List<Car> cars = cardao.getcarsAll();
		model.addAttribute("cars", cars);

		return "listcar";
	}

	@RequestMapping("/addorder")//租借
	public String addorder(Model  model, ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response, HttpSession session){
		try{
			int id = Integer.parseInt(request.getParameter("id"));

			Car car1 = new Car(); //被租车
			car1 =cardao.getcarById(id);
			order_ order=new order_();//订单对象

			order.setUser_id(session.getAttribute("login_id").toString());
			order.setNum(car1.getNumber());
			order.setType(car1.getType());
			order.setColor(car1.getColor());
			order.setDescription(car1.getDescription());

			orderdao.addorder(order);//添加订单到数据库

			//租借之后从列表删除
			cardao.delecarbyid(id);
			List<com.hand.ssm.dto.Car> cars = cardao.getcarsAll();
			model.addAttribute("cars", cars);
			return "listcar";
		}catch (Exception e)
		{
			return "plzlogin";
		}

	}

	@RequestMapping("/delecarbyid")//下架
	public String delecarbyid(Model  model,HttpServletRequest request, HttpServletResponse response){
		int delete_id = Integer.parseInt(request.getParameter("id"));
		cardao.delecarbyid(delete_id);

		List<Car> cars = cardao.getcarsAll();
		model.addAttribute("cars", cars);
		return "listcar";

	}

	@RequestMapping("/addcarok")//上架车辆
	public String addcarok(Model  model, HttpServletRequest request, HttpServletResponse response){


		String carnumber=request.getParameter("carsnumber");
		String cartype =request.getParameter("carstype");
		String carbrand=request.getParameter("carsbrand");
		String carcolor=request.getParameter("carscolor");
		String carprice=request.getParameter("carsprice");
		int carrentprice= Integer.parseInt(request.getParameter("carsrentprice"));
		String cardeposit=request.getParameter("carsdeposit");
		String carisrenting=request.getParameter("carsisrenting");
		String carimg=request.getParameter("carsimg");
		String cardescription=request.getParameter("carsdescription");


		Car car=new Car();
		car.setCarid(car.getCarid());
		car.setNumber(carnumber);
		car.setType(cartype);
		car.setBrand(carbrand);
		car.setColor(carcolor);
		car.setPrice(carprice);
		car.setRentprice(carrentprice);
		car.setDeposit(cardeposit);
		car.setIsrenting(carisrenting);
		car.setImg(carimg);
		car.setDescription(cardescription);

		cardao.addcars(car);

		List<Car> cars = cardao.getcarsAll();
		model.addAttribute("cars", cars);

		return "listcar";

	}


	@RequestMapping("/deleorderbyid")//结束租借
	public String deleorderbyid(Model  model,HttpServletRequest request, HttpServletResponse response,HttpSession session){
		try{
			int id = Integer.parseInt(request.getParameter("id"));
			orderdao.deleorderbyid(id);

			List<order_> order_ = orderdao.getorderAll(session.getAttribute("login_id").toString());
			model.addAttribute("order_", order_);
			return "self_order";
		}catch (Exception e)
		{
			return "plzlogin";
		}

	}
	@RequestMapping("/cartype11")
	public String cartype11(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		String type="SUV";
		List<Car> cars = cardao.getcarsbytypeAll(type);
		model.addAttribute("cars", cars);

		return "listcar11";
	}
	@RequestMapping("/cartype12")
	public String cartype12(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		String type="小轿车";
		List<Car> cars = cardao.getcarsbytypeAll(type);
		model.addAttribute("cars", cars);

		return "listcar22";
	}
	@RequestMapping("/cartype13")
	public String cartype13(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		String type="微面";
		List<Car> cars = cardao.getcarsbytypeAll(type);
		model.addAttribute("cars", cars);

		return "listcar33";
	}
	@RequestMapping("/cartype14")
	public String cartype14(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		String type="跑车";
		List<Car> cars = cardao.getcarsbytypeAll(type);
		model.addAttribute("cars", cars);

		return "listcar44";
	}
	@RequestMapping("/cartype")
	public String cartype(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		System.out.println("fsdfsdfsdf");
		List<Car> cars = cardao.getcarsbyrentpriceAll();
		model.addAttribute("cars", cars);
		System.out.println("cars:"+cars);
		return "listcar2";
	}

//	@ResponseBody
//	@RequestMapping("/cartype11")
//	public List<Car> cartype11(){
//		System.out.println("fdsfdsfsd");
//		List<Car> cars = cardao.getcarsbyrentpriceAll();
//		model.addAttribute("cars", cars);
//		System.out.println("car: "+cars);
//		return cars;
//	}




	@RequestMapping("/updatebycarid")
	public String updatebycarid(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		int carid = Integer.valueOf(request.getParameter("id"));
		Car cars_old = cardao.getcarById(carid);
		model.addAttribute("cars_old", cars_old);

		return "updateCar_";
	}

	@RequestMapping("/cardetails")
	public String cardetails(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		int carid = Integer.valueOf(request.getParameter("id"));
		Car cars_old = cardao.getcarById(carid);
		model.addAttribute("cars_old", cars_old);

		return "cardetails";
	}

	@RequestMapping("/serch_type")
	public String serch_type(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		String type=request.getParameter("TYPE");
		List<Car> cars = cardao.getcarsbytypeAll(type);
		model.addAttribute("cars", cars);

		return "listcar";
	}
	@RequestMapping("/serch_brand")
	public String serch_brand(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		String brand=request.getParameter("BRAND");
		List<Car> cars = cardao.getcarsbybrandAll(brand);
		model.addAttribute("cars", cars);

		return "listcar";
	}

	@RequestMapping("/updatecarok")
	public String updatecarok(Model  model,ModelAndView modelAndView, HttpServletRequest request, HttpServletResponse response){
		int carid = Integer.parseInt(request.getParameter("carid"));
		String carnumber=request.getParameter("carsnumber");
		String cartype =request.getParameter("carstype");
		String carbrand=request.getParameter("carsbrand");
		String carcolor=request.getParameter("carscolor");
		String carprice=request.getParameter("carsprice");
		int carrentprice= Integer.parseInt(request.getParameter("carsrentprice"));
		String cardeposit=request.getParameter("carsdeposit");
		String carisrenting=request.getParameter("carsisrenting");
		String carimg=request.getParameter("carsimg");
		String cardescription=request.getParameter("carsdescription");

		Car car=new Car();
		car.setCarid(carid);
		car.setNumber(carnumber);
		car.setType(cartype);
		car.setBrand(carbrand);
		car.setColor(carcolor);
		car.setPrice(carprice);
		car.setRentprice(carrentprice);
		car.setDeposit(cardeposit);
		car.setIsrenting(carisrenting);
		car.setImg(carimg);
		car.setDescription(cardescription);

		cardao.updateCarById(car);

		List<Car> cars = cardao.getcarsAll();
		model.addAttribute("cars", cars);

		return "listcar";
	}

}
