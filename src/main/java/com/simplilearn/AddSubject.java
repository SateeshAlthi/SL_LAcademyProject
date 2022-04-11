package com.simplilearn;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddSubject")

public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName(DBConnection.driver);
			Connection conn = DriverManager.getConnection(DBConnection.url, DBConnection.userName, DBConnection.password);
			System.out.println(conn);
			Statement st = conn.createStatement();

			String query = "select subject_SEQ.NEXTVAL from dual";
			ResultSet rSet = st.executeQuery(query);
			if (rSet.next()) 
				System.out.println("nextval= " + rSet.getInt(1));
			int nextval=rSet.getInt(1);

			PreparedStatement pst = conn.prepareStatement("insert into subject values(?,?,?)");
			pst.setInt(1,nextval);
			pst.setString(2,request.getParameter("sname"));
			pst.setString(3,request.getParameter("time"));
			System.out.println(pst);

			int x=pst.executeUpdate();
			if(x!=0) {
				System.out.println("data submitted");
			}else {
				System.out.println("error");
			}
			pst.close();
			conn.close();
			response.sendRedirect("subject.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}