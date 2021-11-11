package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.DBConn;
import vo.MemberVo;

public class MemberDao {
	private  Connection         conn = null;
	private  PreparedStatement  pstmt = null;
	
	// 게시물 목록 조회
	public ArrayList<MemberVo> getMemberList() {
		ArrayList<MemberVo>  list = new ArrayList<MemberVo>();
		ResultSet            rs   = null;
				
		try {
			DBConn db   = new DBConn();
			conn        = db.getConnection();
			String  sql = "SELECT * FROM MEMBER";
			pstmt       = conn.prepareStatement(sql);
			
			rs  = pstmt.executeQuery();
			while( rs.next() ) {
				int    memid     = rs.getInt("memid");
				String memname   = rs.getString("memname");
				String userid    = rs.getString("userid");
				String passwd    = rs.getString("passwd");
				String tel       = rs.getString("tel");
				String email     = rs.getString("email");
				int    mpoint    = rs.getInt("mpoint");
				String joindate  = rs.getString("joindate");
				MemberVo mem = new MemberVo(
					memid, memname, userid, passwd, 
					tel, email, mpoint, joindate);
				list.add( mem );
			} 
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null)    rs.close();
				if(pstmt != null) pstmt.close();
			} catch (SQLException e) {
			}
		}
		return list;    
		
	}
	
	public void  memreg(String   memname, String uid, String pwd, String   tel, String   email)
			throws SQLException {
		String     name  = "";
		DBConn     db    = new DBConn();
		Connection conn  = db.getConnection();
		String     sql   = "";
		sql   = " INSERT INTO MEMBER( MEMID, MEMNAME, USERID, PASSWD, TEL, EMAIL ) ";
		sql  += " VALUES ( (SELECT NVL(MAX(MEMID),0) + 1 FROM MEMBER), ?, ?, ?, ?, ? ) ";
						
		PreparedStatement  pstmt = conn.prepareCall(sql);
		pstmt.setString(1, memname);
		pstmt.setString(2, uid);
		pstmt.setString(3, pwd);
		pstmt.setString(4, tel);
		pstmt.setString(5, email);
		pstmt.executeUpdate();

		
		
		pstmt.close();
		conn.close();
	}
	
	
}

















