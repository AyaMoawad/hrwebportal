package employeestracker.spring.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import employeestracker.spring.dao.UserDAO;
import employeestracker.spring.entity.Employee;
import employeestracker.spring.entity.hr;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public hr getHr(String email) {
		hr hr = userDAO.getHr(email);
		return hr;
	}

	@Override
	@Transactional
	public void addHr(hr myHr) {
		userDAO.addHr(myHr);
	}

	@Override
	@Transactional
	public void deleteHr(String email) {
		userDAO.deleteHr(email);
	}

	@Override
	@Transactional
	public void addEmployees(Employee theEmployee, String email) {
		userDAO.addEmployees(theEmployee, email);
	}

	@Override
	@Transactional
	public List<Employee> getEmployees(String email) {
		return userDAO.getEmployees(email);
		}
	
	
	@Override
	@Transactional
	public Employee getEmployee(int theId) {
		return userDAO.getEmployee(theId);
		}

	@Override
	@Transactional
	public void addEmployees(Employee theEmployee, String email, int theId) {
		userDAO.addEmployees(theEmployee, email,theId);
		
	}

	@Override
	@Transactional
	public void deleteEmployee(int theid) {
	userDAO.deleteEmployee(theid);		
	}


}
