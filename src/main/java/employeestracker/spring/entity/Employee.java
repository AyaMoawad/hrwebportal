package employeestracker.spring.entity;

import java.util.Arrays;
import java.util.Base64;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "employee")
public class Employee {
	
	@Column(name = "photoUrl")
	private String photoUrl;
	
	@Column(name = "employeeSalary")
	private int employeeSalary;
	
	
	public int getEmployeeSalary() {
		return employeeSalary;
	}

	public void setEmployeeSalary(int employeeSalary) {
		this.employeeSalary = employeeSalary;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "emp_id")
	private int id;
	
	@Column(name = "country")
	private String country;
	
	@Column(name = "photo")
	private byte[] photo;
	
	@Column(name= "jobdiscription")
	private String jobDiscription;
	
	@Column(name = "jobtitle")
	private String jobTitle;
	
	@DateTimeFormat(pattern = "yyyy/mm/dd")
	@Temporal(TemporalType.DATE)
	@Column(name="dateofbirth")
	private Date dateOfBirth;

	@DateTimeFormat(pattern = "yyyy/mm/dd")
	@Temporal(TemporalType.DATE)
	@Column(name="dateofhiring")
	private Date dateOfHiring;
	
	@Column(name="address")
	private String address;

	@NotNull(message = "is required !")
	@Size(min = 1 , max = 45, message = "is required !")
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	@NotNull(message = "is required !")
	@Size(min = 1 , max = 45, message = "is required !")
	@Column(name = "email")
	private String email;
	
	@ManyToOne(cascade =  {CascadeType.PERSIST,
						  CascadeType.MERGE,
						  CascadeType.REFRESH,
						  CascadeType.DETACH })
	@JoinColumn(name = "hr_id")
	private hr hr;
	
	public hr getHr() {
		return hr;
	}

	public void setHr(hr hr) {
		this.hr = hr;
	}

	public Employee() {
		
	}

	public Employee(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "Employee [id=+" + id + ", country=" + country + ", photo=" + Arrays.toString(photo) + ", jobDiscription="
				+ jobDiscription + ", jobTitle=" + jobTitle + ", dateOfBirth=" + dateOfBirth + ", dateOfHiring="
				+ dateOfHiring + ", address=" + address + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", hr=" + hr + "]";
	}

	public String getJobDiscription() {
		return jobDiscription;
	}

	public void setJobDiscription(String jobDiscription) {
		this.jobDiscription = jobDiscription;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getDateOfHiring() {
		return dateOfHiring;
	}

	public void setDateOfHiring(Date dateOfHiring) {
		this.dateOfHiring = dateOfHiring;
	}
		

	public String getPhotoUrl() {
		String pu = Base64.getEncoder().encodeToString(getPhoto());
        setPhotoUrl(pu);
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	
}
