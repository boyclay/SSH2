package intercept;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import action.UserAction;

public class RoleInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 3567492609524901024L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		System.out.println("进入拦截器");
//		Object action = arg0.getAction();
//		if (action instanceof UserAction) {
//			if (arg0.getProxy().getMethod().equals("login")) {
//				return ((UserAction) action).login();
//			}
//		}
		return arg0.invoke();
	}
}
