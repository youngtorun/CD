package zyr.cd.domain;

/**
 * 用户模块实体类
 * @singer qdmmy6
 *
 */
/*
 * 
 * 1. 属性从t_user表来：因为需要把t_user表查询出的数据封装到User对象中
 * 2. 属性从该模块所有表单来：因为我们需要把表单数据封装到User对象中
 */
public class User {
	// 对应数据库表
	private String uid;//主键
	private String loginname;//登录名
	private String loginpass;//登录密码
	private String email;//邮箱
	
	
	// 注册表单
	private String reloginpass;//确认密码
	private String verifyCode;//验证码
	
	// 修改密码表单
	private String newpass;//新密码

	public String getReloginpass() {
		return reloginpass;
	}
	public void setReloginpass(String reloginpass) {
		this.reloginpass = reloginpass;
	}
	public String getVerifyCode() {
		return verifyCode;
	}
	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}


	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getLoginpass() {
		return loginpass;
	}
	public void setLoginpass(String loginpass) {
		this.loginpass = loginpass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getNewpass() {
		return newpass;
	}
	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", loginname=" + loginname + ", loginpass="
				+ loginpass + ", email=" + email + ", reloginpass="
				+ reloginpass + ", verifyCode=" + verifyCode + ", newpass="
				+ newpass + "]";
	}

}
