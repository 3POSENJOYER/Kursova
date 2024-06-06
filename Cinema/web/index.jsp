<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Кінотеатр</title>
    <link rel="stylesheet" type="text/css" href="stylee.css">
</head>
<body>
<div class="container">
    <header>
        <h1>Кінотеатр</h1>
        <nav>
            <ul>
                <li><a href="#" class="menu-home">Головна</a></li>
                <li><a href="seans.jsp" class="menu-sessions">Сеанси</a></li>
                
                
            </ul>
        </nav>
    </header>

    <main>
        

        <section>
            <h2>Забронювати квиток</h2>
            <form action="booking" method="post">
                <label for="name">Ім'я:</label>
                <input type="text" id="name" name="name" required>

                <label for="number">Номер телефону:</label>
                <input type="tel" id="number" name="number" required>

                <label for="session">Сеанс:</label>
                <select id="session" name="session" required>
                    <option value="">Оберіть сеанс</option>
                     <option value="1">Фільм 1: Легенда - 2024-06-01 15:00</option>
                    <option value="2">Фільм 2: Людина-павук: Додому нема шляху - 2024-06-01 18:00</option>
                    <option value="3">Фільм 3: Інтерстеллар - 2024-06-01 21:00</option>
                </select>

                <label for="date">Дата:</label>
                <input type="date" id="date" name="date" min="2024-06-01" max="2024-06-01"required>
                
        

                <button type="submit">Забронювати</button>
            </form>
        </section>

        <section>
            <h2>Логін</h2>
            <form action="Loginpages" method="post">
                <label for="user">Ім'я користувача:</label>
                <input type="text" id="user" name="user" required>

                <label for="pass">Пароль:</label>
                <input type="password" id="pass" name="pass" required>

                <button type="submit">Увійти</button>
            </form>
        </section>

   <section>
    <h2>Пошук фільмів</h2>
    <form action="search" method="get">
        <label for="title">Назва фільму:</label>
        <input type="text" id="title" name="title">

     

        <button type="submit">Пошук</button>
        
    </form>

