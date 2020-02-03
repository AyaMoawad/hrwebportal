package employeestracker.spring.service;


import java.util.List;

import employeestracker.spring.entity.Employee;
import employeestracker.spring.entity.hr;


public interface UserService {

	public hr getHr(String email);
	public void addHr(hr myHr);
	void deleteHr(String email);
	public boolean addEmployees(Employee theEmployee,String email);
	public void addEmployees(Employee theEmployee,String email,int theId);
	public List<Employee> getEmployees(String email);
	Employee getEmployee(int theId);
	public void deleteEmployee(int theid);
	void calculateAndSetTotalSalary(String email);
}
