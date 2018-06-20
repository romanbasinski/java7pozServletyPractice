package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "CookieServlet", urlPatterns = "/cookieServlet")
public class CookieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String option = request.getParameter("option");

        if("addCookie".equals(option)){

            String name = "cookie"+new Random().nextInt(500);
            String value = ""+new Random().nextInt(500);

            Cookie cookie = new Cookie(name,value);

            cookie.setMaxAge(3600);
            response.addCookie(cookie);



            request.getRequestDispatcher("/index.jsp").forward(request,response);

        }else if("showCookies".equals(option)){

            request.getRequestDispatcher("/cookieInfo.jsp").forward(request,response);

        }else if("removeCookies".equals(option)){

            for (Cookie c: request.getCookies()){
                c.setMaxAge(0);
                response.addCookie(c);
            }
        }else {

            System.err.println("Zła opcja");
        }


    }
}
