import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebListener;
//import javax.servlet.ServletContext;
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;

@WebListener
public class ConnectionListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent evt) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstdatabase","root","Sam@31122000");
			System.out.println("Connected...");
			ServletContext context=evt.getServletContext();
			PreparedStatement psinsert=cn.prepareStatement("insert into employeeinfo values(?,?,?,?,?)");
			context.setAttribute("insert",psinsert);
			Statement st=cn.createStatement();
			context.setAttribute("select",st);
			PreparedStatement pssearch=cn.prepareStatement("select * from employeeinfo where eid=?");
			context.setAttribute("search",pssearch);
			PreparedStatement psupdate=cn.prepareStatement("update employeeinfo set firstname=?,lastname=?,department=?,salary=? where eid=?");
			context.setAttribute("update",psupdate);
			PreparedStatement psdelete=cn.prepareStatement("delete from employeeinfo where eid=?");
			context.setAttribute("delete",psdelete);
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
	}
	public void contextDestroyed(ServletContextEvent arg0) {}
}
