package borrow.btn;

import static bookIn.db.JdbcUtil.*;

import java.sql.*;
//import java.util.Calendar;
import java.util.Timer;
import java.util.TimerTask;

public class Timertest {
	
	private static Timertest timer;
	
	public static Timertest getTimerTask() {
		
		if(timer == null) {
			timer = new Timertest();
		}
		return timer;
	}
	
	
	private Timertest() {
		
		TimerTask task = new TimerTask() {
			@Override
			public void run() {
				print();
			}

		};


//		Calendar cal = Calendar.getInstance();
////	cal.set(Calendar.DATE,1);
//		cal.set(Calendar.HOUR, 0);
//		cal.set(Calendar.MINUTE, 0);
//		cal.set(Calendar.SECOND, 0);
//		cal.set(Calendar.MILLISECOND, 0);

		Timer t = new Timer();
		t.scheduleAtFixedRate(task, 1000, 1000 * 20);

	}

	protected void print() {
		Connection con = null;
		Statement stmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "sd";
		String pw = "1111";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String sql;

		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pw);
			con.setAutoCommit(false);
			
			sql = "update SIGN set b_pass = 'Y' where r_due < sysdate and b_pass = 'T'";
			stmt = con.createStatement();
			stmt.executeUpdate(sql);
			commit(con);
			sql = "update SIGN set over = over - 1 where over > 0";
			stmt = con.createStatement();
			int i = stmt.executeUpdate(sql);
		
			commit(con);

			if (i > 0) {
				sql = "update SIGN set b_pass = 'F' where OVER = 0 and b_pass = 'C'";
				stmt.executeUpdate(sql);
				commit(con);
			}
			
			sql = "update sign set record = record+1 where b_pass = 'F'";
			i = stmt.executeUpdate(sql);
			commit(con);
			
			
			sql = "delete from sign where record = 50";
			i = stmt.executeUpdate(sql);
			commit(con);
		}catch(Exception e) {
			System.out.println("Timer에러");
		}finally {
			try {
				if(!(stmt==null || stmt.isClosed())) stmt.close();
				if(!(con==null || con.isClosed())) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		

	}
}
