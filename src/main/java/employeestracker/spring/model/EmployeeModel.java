package employeestracker.spring.model;

public class EmployeeModel {
	
	private String firstName;
	
	private String lastName;
	
	private String email;

	private HrModel hr;

	public EmployeeModel() {
		// TODO Auto-generated constructor stub
	}

	public EmployeeModel(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public HrModel getHr() {
		return hr;
	}

	public void setHr(HrModel hr) {
		this.hr = hr;
	}
	
	
	
}
