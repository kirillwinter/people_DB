package system.model;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "usersdb")
public class User {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "first_Name")
	private String firstName;

	@Column(name = "middle_Name")
	private String middleName;

	@Column(name = "last_Name")
	private String lastName;

	@Column(name = "date")
	private Date dateBirth;

	@Column(name = "sex")
	private Sex sex;


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

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDateBirth() {
		return dateBirth;
	}

	public void setDateBirth(Date dateBirth) {
		this.dateBirth = dateBirth;
	}

	public String getSex() {
		return this.sex.name();
	}

	public void setSex(String sex) {
		this.sex = Sex.valueOf(sex);
	}
}
