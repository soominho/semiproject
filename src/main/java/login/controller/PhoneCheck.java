package login.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import login.dao.MemberDAO;
import login.vo.MemberBean;

@WebServlet("/phoneCheck")
public class PhoneCheck extends HttpServlet {
        protected void doProcess(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
                System.out.println("phoneCheck doProcess()");
                
                String ph = request.getParameter("ph");
        		System.out.println("입력한 ph  : " + ph);

////        		if (id == null) {
//        			if (ph.equals("")) {
//        				System.out.println("입력한 전화번호값이 없습니다" + ph);
//        		        response.setContentType("text/html;charset=UTF-8");
//        		        PrintWriter out=response.getWriter();
//        		        out.println("<script>");
//        		        out.println("alert('로그아웃되었습니다.');");
//        		        out.println("location.href='./LoginForm.jsp';");
////        		        out.println("history.back();");
//        		        out.println("</script>");
//        			StringBuilder stringBuilder = new StringBuilder();
//        			BufferedReader bufferedReader = null;
//        			
//        			try {
//        				InputStream inputStream = request.getInputStream();
//        				if (inputStream != null) {
//        					bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
//        					char[] charBuffer = new char[128];
//        					int bytesRead = -1;
//        					while ((bytesRead = bufferedReader.read(charBuffer)) > -1) {
//        						stringBuilder.append(charBuffer, 0, bytesRead);
//        						//stringBuilder : UNICODE로 받아온 값을 String형으로 변환
//        					}
//        				} else {
//        					stringBuilder.append("");
//        					System.out.println(stringBuilder);
//        				}
//        				JSONParser json = new JSONParser();
//        				//JSONParser {key:value, key:value...}형식으로 변환
//        				JSONObject jobj ;
//        				try {
//        					jobj = (JSONObject) json.parse(stringBuilder.toString());
//        					ph = (String ) jobj.get("ph");
//        					System.out.println("json ph  : " + ph);
//        				} catch (Exception e) {
//        					e.printStackTrace();
//        				}
//        				
//        			} catch (IOException ex) {
//        				throw ex;
//        			} finally {
//        				if (bufferedReader != null) {
//        					try {
//        						bufferedReader.close();
//        					} catch (IOException ex) {
//        						throw ex;
//        					}
//        				}
//        			}
//        		}

        		MemberBean mVO = new MemberBean();
        		mVO.setPh(ph);
        		MemberDAO mDAO = new MemberDAO();
        		boolean result = mDAO.phCheck(mVO);
        		String str;
        		String str1;

        		if (result) {
        			str = "사용하실 수 없는 전화번호입니다.";
        			str1 = "0";
        		}else {        			
        			str = "사용 가능한 전화번호입니다.";	
        			str1 = "1";
        		}

        		HashMap<String, Object> map = new HashMap<String, Object>();
        		map.put("str", str);
        		map.put("str1", str1);
        		map.put("ph", ph);

        		JSONObject jObject = new JSONObject();
        		jObject.put("map", map);

        		response.setContentType("application/x-json; charset=utf-8");
        		response.getWriter().print(jObject);
        	}

        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
                doProcess(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
                doProcess(request, response);
        }
}
