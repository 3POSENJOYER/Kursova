package SearchServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SearchServlet", urlPatterns = {"/search"})
public class SearchServlet extends HttpServlet {
    private List<Movie> movies;

    @Override
    public void init() throws ServletException {
        
        movies = new ArrayList<>();
        movies.add(new Movie("Легенда", "Бойовик"));
        movies.add(new Movie("Людина-павук: Додому нема шляху", "Пригоди"));
        movies.add(new Movie("Інтерстеллар", "Наукова фантастика"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
       
        

    if (null == title){
        response.sendRedirect("error.jsp");
        
        
        
        
        
        
        
        
        
        
        
    } 
    else switch (title) {
            case "Легенда" -> response.sendRedirect("seans.jsp");
            case "Людина-павук" -> response.sendRedirect("seans.jsp");
            case "Інтерстеллар" -> response.sendRedirect("seans.jsp");
            default -> response.sendRedirect("error.jsp");
        }
    
    
    
    }
     public class Movie {
        private final String title;
        private final String genre;

        public Movie(String title, String genre) {
            this.title = title;
            this.genre = genre;
        }

        public String getTitle() {
            return title;
        }

        public String getGenre() {
            return genre;
        }
    }
}

