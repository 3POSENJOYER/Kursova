package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/editSessions")
public class EditSessionsServlet extends HttpServlet {
    private List<Map<String, String>> allSessions = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String sessionDetails = request.getParameter("sessionDetails");
            addSession(sessionDetails);
        } else if ("remove".equals(action)) {
            String sessionId = request.getParameter("sessionId");
            removeSession(sessionId);
        }

        
        response.sendRedirect("seans.jsp");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("allSessions", allSessions);
        request.getRequestDispatcher("seans.jsp").forward(request, response);
    }

    private void addSession(String sessionDetails) {
       
        Map<String, String> session = new HashMap<>();
        session.put("id", String.valueOf(allSessions.size() + 1)); 
        session.put("details", sessionDetails);

        allSessions.add(session);
    }

    private void removeSession(String sessionId) {
        allSessions.removeIf(session -> session.get("id").equals(sessionId));
    }
}
