//package svc;
//
//import static db.JdbcUtil.*;
//import java.sql.Connection;
////
//import dao.BookDAO;
//import vo.BookBean;
//import vo.MemberBean;
//
//public class BookModifyProService {
////	
//	public boolean isBookWriter(String no, String pass) throws Exception {
////		
//		boolean isBookWriter = false;
//		Connection con = getConnection();
//		BookDAO bookDAO = BookDAO.getInstance();
//		bookDAO.setConnection(con);
//		isBookWriter = bookDAO.isBookWriter(no, pass);
//		close(con);
//		return isBookWriter;
////	}
////	
//	public boolean modifyBook(BookBean article) throws Exception {
////		
//		boolean isModifySuccess = false;
//		Connection con = getConnection();
//		BookDAO bookDAO = BookDAO.getInstance();
//		bookDAO.setConnection(con);
//		int updateCount = bookDAO.updateBook(article);
////		
//		if(updateCount > 0) {
//			commit(con);
//			isModifySuccess = true;
//		} else {
//			rollback(con);
//		}
//		
//		close(con);
//		return isModifySuccess;
//	}
//}
