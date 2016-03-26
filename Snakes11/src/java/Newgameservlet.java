
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Newgameservlet extends HttpServlet {

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    /**
     * Process the HTTP Get request
     */
    public void doPost(HttpServletRequest req,
            HttpServletResponse res) throws ServletException,
            IOException {
        String connectionURL = "jdbc:mysql://localhost:3306/snakes_ladders";
        Connection connection = null;
        ResultSet rs;
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        //get the variables entered in the form
        String uname = req.getParameter("uname");
        String bname = req.getParameter("bname");
        String Noofplayers = req.getParameter("Noofplayers");
        String password = req.getParameter("p");
        String dicecolor = req.getParameter("dicecolor");

        int no = Integer.parseInt(Noofplayers);
        try {
            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionURL, "root", "tharun9322");

            HttpSession s = req.getSession(true);



          //  String ss = (String) s.getAttribute("uname");



            //HttpSession s = req.getSession(true);
            s.setAttribute("bname", bname);
            s.setAttribute("pname", uname);
            s.setAttribute("host", "1");
            //  connection = DriverManager.getConnection(connectionURL, "root", "tharun9322"); 
            String sql = "insert into game_details values (?,?,?,?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, bname);
            pst.setString(2, password);
            pst.setInt(3, no);
            pst.setString(4, uname);
            pst.setInt(5, 1);
            pst.setString(6, dicecolor);
            int numRowsChanged = pst.executeUpdate();


            String sql1 = "insert into players_details values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst1 = connection.prepareStatement(sql1);
            pst1.setString(1, uname);
            pst1.setString(2, bname);

            pst1.setString(3, dicecolor);
            pst1.setInt(4, 0);
            pst1.setInt(5, 0);
            pst1.setString(6, "1");
            pst1.setInt(7, 1);
            pst1.setInt(8, 1);
            pst1.setInt(9, 0);
            pst1.executeUpdate();

            res.sendRedirect("board.jsp?jbname=" + bname + "&jpname=" + uname + "&a=0&b1=1&flag=on");


        } catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
//            out.println("SQLException caught: " 
//            + e.getMessage());
            res.setContentType("text/html");
            out.println("<html><head><title></title><body>");
            out.println("The entered game name already exists.......Please enter a new game name<br>");
            out.println("<a href='newgame.jsp'>GOBack</a> ");
            out.println("</body></html>");
        } catch (Exception e) {
            out.println(e);
        } finally {
            // Always close the database connection.
        }
    }
}
