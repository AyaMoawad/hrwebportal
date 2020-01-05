package employeestracker.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import employeestracker.spring.entity.Employee;
import employeestracker.spring.entity.hr;

@Repository
public class UserDAOImpl implements UserDAO {

	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public hr getHr(String email) {
		// get the session
		Session session = sessionFactory.getCurrentSession();

		// get the user
		Query<hr> theQuery = session.createQuery("from hr h where h.email =:email", hr.class);
		theQuery.setParameter("email", email);

		// return the user
		return (hr) theQuery.getSingleResult();
	}

	@Override
	public void addHr(hr myHr) {
		// get the session then save the user
		Session theSession = sessionFactory.getCurrentSession();

		theSession.saveOrUpdate(myHr);

	}

	@Override
	public void deleteHr(String email) {
		// get the session
		Session session = sessionFactory.getCurrentSession();

		// get the user
		Query<hr> theQuery = session.createQuery("from hr h where h.email =:email", hr.class);
		theQuery.setParameter("email", email);
		hr theUser = (hr) theQuery.getSingleResult();

		session.delete(theUser);
	}

	@Override
	public void addEmployees(Employee theEmployee, String email) {
		// get the session
		Session session = sessionFactory.getCurrentSession();

		// get the user
		Query<hr> theQuery = session.createQuery("from hr h where h.email =:email", hr.class);
		theQuery.setParameter("email", email);
		hr theUser = (hr) theQuery.getSingleResult();

		// Add the employee to the HR then save him
		theUser.addEmployee(theEmployee);
		session.saveOrUpdate(theEmployee);
	}

	@Override
	public List<Employee> getEmployees(String email) {
		// get the session
		Session session = sessionFactory.getCurrentSession();

		// get the user
		Query<hr> theQuery = session.createQuery("from hr h where h.email =:email", hr.class);
		theQuery.setParameter("email", email);
		hr theUser = (hr) theQuery.getSingleResult();

		// get the user's employees using HR id
		// Query<Employee> query = session.createQuery("from employee e where e.hr_id
		// =:hrId", Employee.class);
		// query.setParameter("hrId", theUser.getId());
		List<Employee> employees = theUser.getEmployees();
		// return the employee list
		// List<Employee> employees = query.getResultList();
		return employees;
	}

	@Override
	public Employee getEmployee(int theId) {
		// get the session
		Session session = sessionFactory.getCurrentSession();

		// get the employee using id
		Employee employee = session.get(Employee.class, theId);

		// return the employee
		return employee;
	}

	@Override
	public void addEmployees(Employee theEmployee, String email, int theId) {
		// get the session
		Session session = sessionFactory.getCurrentSession();

		// get the employee
		Employee employee = session.get(Employee.class,theId);
		
		//change values 
		employee.setEmail(theEmployee.getEmail());
		employee.setFirstName(theEmployee.getFirstName());
		employee.setLastName(theEmployee.getLastName());
		
		session.update(employee);
	}

	@Override
	public void deleteEmployee(int theid) {
		// get the session
		Session session = sessionFactory.getCurrentSession();
		
		//query to delete the employee by his id
		//Query<Employee> query = session.createQuery("delete from employee e where e.emp_id =:empId");
		//query.setParameter("empId", theid);
		//query.executeUpdate();
		
		
		
		// get the employee using id
		Employee employee = session.get(Employee.class, theid);
		
		//delete the employee
		session.delete(employee);
		
	}

}
