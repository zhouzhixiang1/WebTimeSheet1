//package com.timesheet.intercepter;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.timesheet.entity.Dipendente;
//import com.timesheet.entity.Manager;
//
//public class LoginIntercepterD implements HandlerInterceptor {
//
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//		String uri = request.getRequestURI();
//		if (uri.indexOf("/loginD") > 0) {
//			HttpSession session = request.getSession();
//			Dipendente dipendente = (Dipendente) session.getAttribute("dipendente");
//			// 判断session中是否有用户数据，如果有，则返回true，继续向下执行
//			if (dipendente != null) {
//				return true;
//			}else
//			request.setAttribute("msg2", "non hai ancora loggato!");
//			request.getRequestDispatcher("WEB-INF/views/loginD.jsp").forward(request, response);
//			return false;
//		}else
//			return false;
//
//	}
//
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
//			throws Exception {
//		// TODO Auto-generated method stub
//
//	}
//
//}
