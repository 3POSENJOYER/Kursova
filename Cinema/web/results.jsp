<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Результати пошуку</title>
    <link rel="stylesheet" type="text/css" href="stylee.css">
</head>
<body>
<div class="container">
    <header>
        <h1>Кінотеатр - Результати пошуку</h1>
        <nav>
            <ul>
                <li><a href="index.jsp" class="menu-home">Головна</a></li>
                <li><a href="seans.jsp" class="menu-sessions">Сеанси</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section>
            <h2>Фільми</h2>
            <ul id="movie-list">
                <c:forEach var="movie" items="${movies}">
                    <li>${movie.title} - ${movie.genre}</li>
                </c:forEach>
            </ul>
        </section>
    </main>
</div>
</body>
</html>
