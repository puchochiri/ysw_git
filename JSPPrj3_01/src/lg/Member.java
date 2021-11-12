package lg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConn;

public class Member {
	
	public String  getDBLogin(String uid, String pwd)
			throws SQLException {
		String     name  = "";
		DBConn     db    = new DBConn();
		Connection conn  = db.getConnection();
		String     sql   = "";
		sql   = "SELECT MEMNAME FROM  MEMBER ";
		sql  += " WHERE USERID = ?";
		sql  += " AND   PASSWD = ?";
		PreparedStatement  pstmt = conn.prepareCall(sql);
		pstmt.setString(1, uid);
		pstmt.setString(2, pwd);
		
		ResultSet          rs    = pstmt.executeQuery();
		
		if( rs.next() ) {
			name  =  rs.getString("MEMNAME");
		} else {
			name  =  "아이디가 암호가 일치하지 않습니다";
		}
		System.out.println("name:" + name);
		rs.close();
		pstmt.close();
		conn.close();
		return  name;
	}
	
	public String  getLogin( String uid, String pwd) {
		
		String result = "";
		if( !uid.equals("") ) {
			if(	uid.equals( pwd ) )
				result = "카리나";
			else
				result = "정확하게 입력하세요";
		} else {
			result = "아이디입력하세요";
		}
		return  result;
		
	}
	
}
