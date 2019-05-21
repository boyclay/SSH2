package action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ModelDriven;

import entity.User;
import service.UserService;

/*
 * 用户Action
 */
public class UserAction extends SuperAction implements ModelDriven<User> {

	private static final long serialVersionUID = 1L;

	private User user = new User();

	private UserService userService;

	@Override
	public User getModel() {
		return user;
	}

	@Autowired
	public UserAction(UserService userService) {
		this.userService = userService;
	}

	// 登录方法
	public String login() {
		boolean flag = userService.login(user);
		if (flag) {
			return SUCCESS;
		}else {
			this.addFieldError("result", "账号或者密码错误");// 显示出错信息，跟前台的struts2标签进行配合显示
			return INPUT;
		}
	}
}
