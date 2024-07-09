//package bookIn.svc;
//
//import static bookIn.db.JdbcUtil.getConnection;
//
//import java.io.File;
//import java.sql.Connection;
//
//import bookIn.dao.BookDAO;
//import bookIn.vo.BookBean;
//
//public class BookFileService {
//	
//	public boolean modiFile(BookBean bookFile) throws Exception {
//		boolean isModifySuccess = false;
//		Connection con = null;
//		
//		try {
//			con = getConnection();
//			BookDAO bookDAO = BookDAO.getInstance(); // BookDAO의 인스턴스를 얻습니다.
//			bookDAO.setConnection(con);
//			
//			String no = bookFile.getNo();
//			String df = bookDAO.deleteBookFile(no);
//			String bookfile = bookFile.getBookfile();
//			String updateCount = bookDAO.updateBookFile(no,bookfile);
//			
//			if(Integer.parseInt(updateCount) > 0) {
//				isModifySuccess = true;
//				
//				File file = new File("C:\\jspwork\\semiproject\\src\\main\\webapp\\bookcoverupload\\" + df);
//				
//				if (file.exists()) {
//					if (file.delete()) {
//						System.out.println("파일삭제 성공");
//					} else {
//						System.out.println("파일삭제 실패");
//					}
//				} else {
//					System.out.println("파일이 존재하지 않습니다.");
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			if (con != null) {
//				con.close();
//			}
//		}
//		
//		return isModifySuccess;
//
//	}
//}
