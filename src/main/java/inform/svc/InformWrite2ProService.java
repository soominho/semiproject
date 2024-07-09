package inform.svc;

import java.sql.Connection;
import inform.dao.InformDAO;
import inform.vo.InformBean;
import static inform.db.JdbcUtil.*;
public class InformWrite2ProService {

	public boolean registArticle(InformBean InformBean) throws Exception{
		// TODO Auto-generated method stub
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		InformDAO informDAO = InformDAO.getInstance();
		informDAO.setConnection(con);
		int insertCount = informDAO.insertArticle1(InformBean);
		System.out.println("write1");
		
		if(insertCount > 0){
			commit(con);
			isWriteSuccess = true;
		}
		else{
			rollback(con);
		}
		
		close(con);
		return isWriteSuccess;
		
	}

}
