package com.timesheet.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.timesheet.entity.Manager;

public class LoginIntercepter implements HandlerInterceptor {

	/**
	 * preHandle viene eseguito prima del metodo.
	 * se return true, vengono eseguiti interceptor successivi e il metodo.
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		// UTL:除了login.jsp是可以公开访问的，其他的URL都进行拦截控制
		if (uri.indexOf("/managerLogin") > 0) {
			return true;
		}
			HttpSession session = request.getSession();
			Manager  manager = (Manager) session.getAttribute("manager");
			
			// 判断session中是否有用户数据，如果有，则返回true，继续向下执行
			if (manager == null) {
				request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
				return false;
			} 
			return true;
			
}
	/**
	 * postHandle viene eseguito dopo il metodo ma prima di ModelAndView.
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("[LoginIntercepter] postHandle");
	}

	/**
	 * dopo ModelAndView.
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("[LoginIntercepter] afterCompletion");
	}

}
