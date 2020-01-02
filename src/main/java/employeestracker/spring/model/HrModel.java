package employeestracker.spring.model;

import java.util.ArrayList;
import java.util.List;

public class HrModel {

	private String email;
	private String password;
	private List<EmployeeModel> employees;

	public HrModel() {
		//The default constructor
	}

	public HrModel(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<EmployeeModel> getEmployees() {
		return employees;
	}

	public void setEmployees(List<EmployeeModel> employees) {
		this.employees = employees;
	}
	
	public void addEmployee( EmployeeModel theEmployee) {
		if(employees == null) {
			employees = new ArrayList<EmployeeModel>();
		}
		employees.add(theEmployee);
		theEmployee.setHr(this);
	}	

	

}
