package mboard.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.DBConn;
import mboard.vo.MenuVo;

public class MenuDao {

	private  Connection          conn   = null;
	private  CallableStatement   cstmt  = null;
	
	public List<MenuVo> getMenuList() {
		
		List<MenuVo>  menuList  =  new ArrayList<MenuVo>();
		
		ResultSet    rs         =  null;
		
		try {
			DBConn   db  =  new  DBConn();
			conn         =  db.getConnection();
			String   sql = "{CALL  PKG_MBOARD.PROC_MENU_LIST( ? ) }";
			cstmt        = conn.prepareCall(sql);
			
			// ojdbc6.jar
			// restruction error 발생하면 
			// config problem severity 설정클릭
			//  Fobidden Access rull ------> Error => Ignore 변경 
			cstmt.registerOutParameter( 1, 
				oracle.jdbc.OracleTypes.CURSOR	);
			
			cstmt.executeQuery();  // oracle 프로시저 호출실행
			
			oracle.jdbc.OracleCallableStatement  ocstmt
			   = (oracle.jdbc.OracleCallableStatement) cstmt;
			
			rs  =  ocstmt.getCursor(1);
			
			while( rs.next() ) {
				/*
				MenuVo   vo  =   new MenuVo(); // 기본생성자
				vo.setMenu_id(rs.getString("menu_id"));
				vo.setMenu_name(rs.getString("menu_name"));
				vo.setMenu_seq(rs.getInt("menu_seq"));
				*/
				
				String   menu_id    =  rs.getString("menu_id"); 
				String   menu_name  =  rs.getString("menu_name");
				int      menu_seq   = rs.getInt("menu_seq");
				MenuVo   vo         = new MenuVo(menu_id, menu_name, menu_seq);
				
				menuList.add( vo );
			}
			
			
		}  catch ( SQLException  e  ) {
			e.printStackTrace();
		} finally {
			try {
				if( rs    != null ) rs.close();
				if( cstmt != null ) cstmt.close();
				if( conn  != null ) conn.close();
			} catch (SQLException e) {
			}
		}
		return   menuList;
	}

	public void menuInsert(MenuVo menuVo) {
		try {
			DBConn db 	= new DBConn();
			conn		= db.getConnection();
			String sql  = "{CALL PKG_MBOARD.PROC_MENU_INSERT( ? ) }";
			cstmt		= conn.prepareCall(sql);
			
			cstmt.setString(1, menuVo.getMenu_name());
			
			cstmt.executeUpdate();
			
		} catch( SQLException e ) {
			e.printStackTrace();
		} finally {
			try {
				if( cstmt != null ) cstmt.close();
				if( conn  != null ) conn.close();
			} catch (SQLException e) {
			}
		}
	}

	public void menuDelete(MenuVo menuVo) {
		try {
			DBConn db 	=  new DBConn();
			conn	  	= db.getConnection();
			String sql 	= "{ CALL PKG_MBOARD.PROC_MENU_DELETE( ? ) }";
			cstmt		= conn.prepareCall(sql);
			cstmt.setString(1, menuVo.getMenu_id());
			cstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(cstmt != null)cstmt.close();
				if(conn	 != null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
	}

	

	public void menuUpdate(String menu_id, String menu_name) {
		System.out.println("MenuDao:" + menu_id);
		System.out.println("MenuDao:" + menu_name);
		
		try {
			DBConn db 	=  new DBConn();
			conn	  	= db.getConnection();
			String sql 	= "{ CALL PKG_MBOARD.PROC_MENU_UPDATE( ?,? ) }";
			cstmt		= conn.prepareCall(sql);
			cstmt.setString(1, menu_id);
			cstmt.setString(2, menu_name);
			cstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(cstmt!=null)cstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
	}
	
	
	
}












