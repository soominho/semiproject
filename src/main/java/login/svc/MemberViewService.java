package login.svc;

import static bookIn.db.JdbcUtil.*;
import java.sql.Connection;
import login.dao.MemberDAO;
import login.vo.MemberBean;

public class MemberViewService {

	public MemberBean getMember(String viewId) {
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
System.out.println("MemberViewService 정상작동완료");
		MemberBean member = memberDAO.selectMember(viewId);
		close(con);
		return member;
	}

}
