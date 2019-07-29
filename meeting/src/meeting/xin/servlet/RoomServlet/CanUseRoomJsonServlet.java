package meeting.xin.servlet.RoomServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.DeptService;
import meeting.xin.service.RoomService;
import meeting.xin.vo.Room;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class CanUseRoomJsonServlet
 */
@WebServlet("/CanUseRoomJsonServlet")
public class CanUseRoomJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CanUseRoomJsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		RoomService rs = new RoomService();
		String start =request.getParameter("start");
		String end =request.getParameter("end");
		JSONObject jso = new JSONObject();
		JSONArray jarr=new JSONArray();
		
	
		//System.out.println(rs.showMyCanUseMeeting().size()+"==================");
		if(rs.showMyCanUseMeeting(Timestamp.valueOf(start),Timestamp.valueOf(end))!=null){
//			request.setAttribute("showMyCanUseMeeting",rs.showMyCanUseMeeting(Timestamp.valueOf(start),Timestamp.valueOf(end)));
//			request.getRequestDispatcher("bookMeeting.jsp").forward(request, response);
			ArrayList<Room> roomlist=rs.showMyCanUseMeeting(Timestamp.valueOf(start),Timestamp.valueOf(end));
			for(Room r:roomlist){
				JSONObject ja = new JSONObject();	
				ja.put(r.getRid(),r.getRname());
				jarr.add(ja);
			}
		}else{
			jso.put("msg", "room is null");
		}
		PrintWriter pw = response.getWriter();
		jso.put("msg", jarr);
		pw.println(jso.toString());
		pw.close();
		//System.out.println(rs.showMyCanUseMeeting(Timestamp.valueOf(start),Timestamp.valueOf(end)).size()+"=================="+jso.toString());
	}

}
