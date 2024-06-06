package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String session = request.getParameter("session");
        String date = request.getParameter("date");

        
        Map<String, String> booking = new HashMap<>();
        booking.put("name", name);
        booking.put("number", number);
        booking.put("session", session);
        booking.put("date", date);

       
        HttpSession httpSession = request.getSession();

      
        List<Map<String, String>> allBookings = (List<Map<String, String>>) httpSession.getAttribute("bookings");
        if (allBookings == null) {
            allBookings = new ArrayList<>();
            httpSession.setAttribute("bookings", allBookings);
        }

     
        synchronized (allBookings) {
            allBookings.add(booking);
        }

        
        request.setAttribute("booking", booking);
        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}
