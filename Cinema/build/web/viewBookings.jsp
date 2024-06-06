<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="stylee.css">
    <title>Перегляд бронювань</title>
</head>
<body>
<div class="container">
    <header>
        <h1>Кінотеатр</h1>
        <nav>
            <ul>
                <li><a href="index.jsp" class="menu-home">Головна</a></li>
                <li><a href="viewBookings.jsp" class="menu-sessions">Перегляд бронювань</a></li>
                
            </ul>
        </nav>
    </header>

    <main>
        <section>
            <h2>Перегляд бронювань</h2>
            <%
                HttpSession httpSession = request.getSession();
                List<Map<String, String>> bookings = (List<Map<String, String>>) httpSession.getAttribute("bookings");
                if (bookings != null && !bookings.isEmpty()) {
                    for (Map<String, String> booking : bookings) {
            %>
                <div>
                    <p>Ім'я: <%= booking.get("name") %></p>
                    <p>Номер телефону: <%= booking.get("number") %></p>
                    <p>Сеанс: <%= booking.get("session") %></p>
                    <p>Дата: <%= booking.get("date") %></p>
                </div>
            <%
                    }
                } else {
            %>
                <p>Немає бронювань.</p>
            <%
                }
            %>
        </section>
    </main>
</div>
</body>
</html>
