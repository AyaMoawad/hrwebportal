package employeestracker.spring.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "hr")
public class hr {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "hr_id")
	private int id;
	
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}


	@NotNull(message = "is required !")
	@Size(min = 1 , max = 45, message = "is required !")
	@Column(name = "email")
	private String email;
	
	@NotNull(message = "is required !")
	@Size(min = 1 , max = 45, message = "is required !")
	@Column(name = "password")
	private String password;
	

	@OneToMany(mappedBy = "hr",cascade = {CascadeType.PERSIST,
										  CascadeType.MERGE,
										  CascadeType.REFRESH,
										  CascadeType.DETACH },
										  fetch = FetchType.EAGER)
	private List<Employee> employees;
	
	public hr() {
		
	}

	public hr(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public List<Employee> getEmployees() {
		return employees;
	}


	public void addEmployee( Employee theEmployee) {
		if(employees == null) {
			employees = new ArrayList<Employee>();
		}else {
			employees.add(theEmployee);
			theEmployee.setHr(this);
		}
		
	}	

}
