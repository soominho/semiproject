package login.svc;

import static bookIn.db.JdbcUtil.*;
import java.sql.Connection;
import login.dao.MemberDAO;

public class MemberDeleteService {

	public boolean deleteMember(String deleteId) {
		// TODO Auto-generated method stub
		boolean deleteResult = false;
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		System.out.println("MemberDeleteService 정상작동완료");
		int deleteCount = memberDAO.deleteMember(deleteId);
		if(deleteCount > 0){
			commit(con);
			deleteResult = true;
		}
		else{
			rollback(con);
		}
		close(con);
		return deleteResult;
	}

}
