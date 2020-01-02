package employeestracker.spring.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import employeestracker.spring.entity.Employee;
import employeestracker.spring.entity.hr;
import employeestracker.spring.model.HrModel;
import employeestracker.spring.service.UserService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	UserService userService;

	HrModel hrUser;
	
	int employeeId;

	@RequestMapping("/login")
	public String showLoginForm(Model theModel) {
		hr theUser = new hr();
		theModel.addAttribute("user", theUser);
		return "log-in-form";
	}

	@RequestMapping("/signUpForNewUser")
	public String signUpForNewUser(Model theModel) {
		hr user = new hr();
		theModel.addAttribute("user", user);
		return "signUp-form";
	}

	@GetMapping("/saveUser")
	public String saveUser(@Valid @ModelAttribute("user") hr user, BindingResult result) {
		if (result.hasErrors()) {
			return "signUp-form";
		} else {
			userService.addHr(user);
		}
		return "log-in-form";
	}

	@GetMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("user") hr theUser, BindingResult theBR, Model model) {
		if (theBR.hasErrors()) {
			return "log-in-form";
		} else {
			try {
				hr user = userService.getHr(theUser.getEmail());
				if (user.getPassword().equals(theUser.getPassword())) {
					List<Employee> employees = userService.getEmployees(user.getEmail());
					model.addAttribute("employees", employees);
					hrUser = new HrModel(user.getEmail(), user.getPassword());
					return "home";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return "log-in-form";
	}

	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("employeeId") int theId, Model theModel) {
		Employee theEmployee = userService.getEmployee(theId);
		this.employeeId = theId;
		theModel.addAttribute("employee", theEmployee);
		return "updateEmployee";
	}
	
	@GetMapping("/updateEmployee")
	public String updateEmployee(@Valid @ModelAttribute("employee") Employee theEmployee, BindingResult theBR ,Model model) {
		if (theBR.hasErrors()) {
			return "updateEmployee";
		} else {
			userService.addEmployees(theEmployee, hrUser.getEmail(),this.employeeId);
			List<Employee> employees = userService.getEmployees(hrUser.getEmail());
			model.addAttribute("employees", employees);
			return "home";
		}
	}
	
	@GetMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("employeeId") int theid) {
		userService.deleteEmployee(theid);
		return"home";
	}
	
	@RequestMapping("/deleteHr")
	public String deleteHr(Model theModel) {
		hr user = new hr();
		theModel.addAttribute("user", user);
		return "deleteHr";
	}

	@GetMapping("/processDelete")
	public String processDelete(@Valid @ModelAttribute("user") hr user, BindingResult theBR) {
		if (theBR.hasErrors()) {
			return "home";
		} else {
			userService.deleteHr(user.getEmail());
			return "log-in-form";
		}
	}

	@GetMapping("/addEmployeeForm")
	public String addEmployeeForm(Model theModel) {
		Employee emp = new Employee();
		theModel.addAttribute("employee", emp);
		return "addEmployee";
	}

	@GetMapping("/addEmployee")
	public String addEmployee(@Valid @ModelAttribute("employee") Employee theEmployee, BindingResult theBR,
			Model model) {
		if (theBR.hasErrors()) {
			return "addEmployee";
		} else {
			userService.addEmployees(theEmployee, hrUser.getEmail());
			List<Employee> employees = userService.getEmployees(hrUser.getEmail());
			model.addAttribute("employees", employees);
			return "home";
		}

	}

}
