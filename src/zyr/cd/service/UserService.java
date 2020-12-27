package zyr.cd.service;

import java.io.IOException;
import java.sql.SQLException;
import java.text.MessageFormat;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;

import cn.itcast.commons.CommonUtils;
import cn.itcast.mail.Mail;
import cn.itcast.mail.MailUtils;
import zyr.cd.dao.UserDao;
import zyr.cd.domain.User;
import zyr.cd.service.UserException;

/**
 * 用户模块业务层
 * @singer qdmmy6
 *
 */
public class UserService {
	private UserDao userDao = new UserDao();
	
	/**
	 * 修改密码
	 * @param uid
	 * @param newPass
	 * @param oldPass
	 * @throws UserException 
	 */
	public void updatePassword(String uid, String newPass, String oldPass) throws UserException {

		try {
			/*
			 * 1. 校验老密码
			 */
			boolean bool = userDao.findByUidAndPassword(uid, oldPass);
			if(!bool) {//如果老密码错误
				throw new UserException("老密码错误！");
			}
			
			/*
			 * 2. 修改密码
			 */
			userDao.updatePassword(uid, newPass);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 登录功能
	 * @param user
	 * @return
	 */
	public User login(User user) {
		try {
			return userDao.findByLoginnameAndLoginpass(user.getLoginname(), user.getLoginpass());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * 用户名注册校验
	 * @param loginname
	 * @return
	 */
	public boolean ajaxValidateLoginname(String loginname) {
		try {
			return userDao.ajaxValidateLoginname(loginname);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * Email校验
	 * @param email
	 * @return
	 */
	public boolean ajaxValidateEmail(String email) {
		try {
			return userDao.ajaxValidateEmail(email);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 注册功能
	 * @param user
	 */
	public void regist(User user) {
		/*
		 * 1. 数据的补齐
		 */
		user.setUid(CommonUtils.uuid());
		
		/*
		 * 2. 向数据库插入
		 */
		try {
			userDao.add(user);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
}
