<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Кінотеатр</title>
    <link rel="stylesheet" href="stylee.css">
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
            <h2>Доступні сеанси</h2>
            <div class="session">
                <h3>Фільм 1: Чудо-Жінка</h3>
                <p>Опис: Чудо-Жінка починає нову пригоду для захисту світу.</p>
                <ul>
                    <li>Режисер: Петті Дженкінс</li>
                    <li>Актори: Галь Гадот, Кріс Пайн</li>
                    <li>Вільні місця: 50</li>
                </ul>
                <p>Час сеансу: 2024-06-01 15:00</p>
            </div>

            <div class="session">
                <h3>Фільм 2: Легенда</h3>
                <p>Опис:В окрузі орудують два брати, які зарекомендували себе в ролі найнебезпечніших і жорстоких злочинців.</p>
                <ul>
                    <li>Жанр: Кримінал</li>
                    <li>Режисер: Браян Гелґеланд</li>
                    <li>Актори: Том Гарді,Пол Андерсон</li>
                    <li>Вільні місця: 30</li>
                </ul>
                <p>Час сеансу: 2024-06-01 18:00</p>
            </div>

            <div class="session">
                <h3>Фільм 3: Інтерстеллар</h3>
                <p>Опис: Група дослідників вирушає у космос, щоб знайти новий дім для людства.</p>
                <ul>
                    <li>Режисер: Крістофер Нолан</li>
                    <li>Актори: Меттью Макконахі, Енн Гетевей</li>
                    <li>Вільні місця: 20</li>
                </ul>
                <p>Час сеансу: 2024-06-01 21:00</p>
            </div>
        </section>

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

     
    </main>
</div>
</body>
</html>
