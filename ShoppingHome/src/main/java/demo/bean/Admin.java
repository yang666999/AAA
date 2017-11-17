package demo.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Integer adminId;
private String adminName;
private String password;
private Integer permissions;
public Integer getAdminId() {
	return adminId;
}
public void setAdminId(Integer adminId) {
	this.adminId = adminId;
}
public String getAdminName() {
	return adminName;
}
public void setAdminName(String adminName) {
	this.adminName = adminName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Integer getPermissions() {
	return permissions;
}
public void setPermissions(Integer permissions) {
	this.permissions = permissions;
}

@Override
public String toString() {
	return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", password=" + password + ", permissions="
			+ permissions + "]";
}


}
