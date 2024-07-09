package login.svc;

import login.vo.MemberBean;
import static bookIn.db.JdbcUtil.*;
import java.sql.Connection;
import login.dao.MemberDAO;

public class MemberLoginService {

	public String login(MemberBean member) {
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		System.out.println("MemberLoginService 정상작동완료");
		boolean loginResult = false;
		String active = memberDAO.selectLoginId(member);
		
		close(con);
		return active;
	}

}
