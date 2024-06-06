<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="stylee.css">
    <title>Підтвердження бронювання</title>
</head>
<body>
<div class="container">
    <header>
        <h1>Кінотеатр</h1>
        <nav>
            <ul>
                <li><a href="index.jsp" class="menu-home">Головна</a></li>
                <li><a href="#" class="menu-sessions">Сеанси</a></li>
                
            </ul>
        </nav>
    </header>

    <main>
        <section>
            <h2>Підтвердження бронювання</h2>
            <%
                Map<String, String> booking = (Map<String, String>) request.getAttribute("booking");
                if (booking != null) {
            %>
            <p>Дякуємо, <%= booking.get("name") %>! Ваше бронювання було успішно збережено.</p>
            <p>Сеанс: <%= booking.get("session") %></p>
            <p>Дата: <%= booking.get("date") %></p>
            <p>Номер телефону: <%= booking.get("number") %></p>
            <%
                } else {
            %>
            <p>Виникла помилка при збереженні бронювання. Спробуйте ще раз.</p>
            <%
                }
            %>
        </section>
    </main>
</div>
</body>
</html>
