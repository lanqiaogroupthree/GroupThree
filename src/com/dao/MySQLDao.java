package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.regexp.internal.recompile;


public class MySQLDao {
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	/**
	 * 获得MySQL数据库连接
	 */
	public void openConn() {
		String url = "jdbc:mysql://47.106.111.25:3306/jxw?useSSL=false";
		String user = "root";
		String password = "a123";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 获取第几页的数据
	 * @param pageSize
	 * @param pageIndex
	 * @return
	 */
	public List getAllempByPage(int pageSize,int pageIndex){
		int startRec = (pageIndex-1)*pageSize;
		List<Emper> le = new ArrayList<Emper>();
        String sql="select empno,ename,sal from emp order by empno limit ?,?" ;
        try {
			  ps=conn.prepareStatement(sql);
			  ps.setInt(1, startRec);
			  ps.setInt(2, pageSize);
			  rs=ps.executeQuery();
			  while(rs.next()){
				  Emper emper = new Emper(rs.getInt(1), 
						  rs.getString(2), rs.getDouble(3));
				  le.add(emper);
			  }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return le;
	}
	/**
	 * 获得员工总数
	 * @return
	 */
	public int countEmp(){
    	int count=0;
    	String sql="select count(*) from emp";
    	openConn();
    	try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
    }
	/**
	 * 根据每页显示的数据数量，获得总的页数
	 * @param pageSize
	 * @return
	 */
	public int getTotalPage(int pageSize){
	    int totalPage=countEmp();
	    return (totalPage%pageSize==0)?(totalPage/pageSize):(totalPage/pageSize+1);
	}
}
