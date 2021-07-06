package bb.project.control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class TestMain2 {
	public static void main(String[] args) {
		
		BCryptPasswordEncoder pe = new		BCryptPasswordEncoder();
		
		String driver="oracle.jdbc.driver.OracleDriver"; 
		String user="jdbc:oracle:thin:@projectbb.cn9hfafbttev.ap-northeast-2.rds.amazonaws.com:1521:ORCL"; 
		String username="admin";
		String password="tiger1234"; 
		Connection conn = null;
		PreparedStatement pstmt;
		ResultSet rs  = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(user, username, password); 
			System.out.println("conn : " + conn);

			//String sql = "SELECT numberno, id,name, pwd, enabled from member where id=? ";
		//	String sql = "INSERT INTO MEMBER (numberno, id, pwd, enabled)";
			String sql = "update member set pw = ? where id=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pe.encode("1234"));
			pstmt.setString(2, "jta");
			
			//pstmt.setString(3, pe.encode("123"));
			//pstmt.setString(4,"1");
			//pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1, 22);
			//pstmt.setString(2, "user");
			//pstmt.setString(3, pe.encode("123"));
			//pstmt.setString(4,"1");
			rs = pstmt.executeQuery();
			//rs.next();
			//String name = rs.getString("name");
			//System.out.println("name : " + name);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		// JDBC를 사용해서 member 테이블의 데이터를 추가 
		// user  password 123 
		
	}
}
