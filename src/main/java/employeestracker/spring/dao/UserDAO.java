package employeestracker.spring.dao;

import java.util.List;

import employeestracker.spring.entity.Employee;
import employeestracker.spring.entity.hr;

public interface UserDAO {
	
	public hr getHr(String email);
	public void addHr(hr myHr);
	void deleteHr(String email);
	public boolean addEmployees(Employee theEmployee,String email);
	public List<Employee> getEmployees(String email);
	public Employee getEmployee(int theId);
	public void addEmployees(Employee theEmployee, String email, int theId);
	public void deleteEmployee(int theid);
}
