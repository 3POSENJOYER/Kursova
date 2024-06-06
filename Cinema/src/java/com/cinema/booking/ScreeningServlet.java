package com.cinema.booking;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index")
public class ScreeningServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Screening> screenings = new ArrayList<>();
        screenings.add(new Screening(1, "Чудо-Жінка", "Чудо-Жінка починає нову пригоду для захисту світу.", "Петті Дженкінс", "Галь Гадот, Кріс Пайн", 50, new Date()));
        screenings.add(new Screening(2, "Людина-павук: Додому нема шляху", "Людина-павук стикається з новими загрозами, коли його секрет розкривають.", "Джон Воттс", "Том Голланд, Зендея", 30, new Date()));
        screenings.add(new Screening(3, "Інтерстеллар", "Група дослідників вирушає у космос, щоб знайти новий дім для людства.", "Крістофер Нолан", "Меттью Макконахі, Енн Гетевей", 20, new Date()));

        request.setAttribute("screenings", screenings);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
