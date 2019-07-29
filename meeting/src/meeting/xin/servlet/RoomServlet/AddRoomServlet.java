package meeting.xin.servlet.RoomServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.RoomService;
import meeting.xin.vo.Room;

/**
 * Servlet implementation class AddRoomServlet
 */
@WebServlet("/AddRoomServlet")
public class AddRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRoomServlet() {
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
		// TODO Auto-generated method stub
		String rnum = request.getParameter("rnum");
		String rname = request.getParameter("rname");
		String rpeople = request.getParameter("rpeople");
		String rstatus = request.getParameter("rstatus");
		String rnote = request.getParameter("rnote");
		RoomService rs = new RoomService();
		//System.out.println(rstatus+"==========");
		boolean falg = rs.addRoom(new Room(Integer.parseInt(rnum),rname,Integer.parseInt(rpeople),Integer.parseInt(rstatus),rnote));
		if(falg){
			request.setAttribute("msg", "addRoom is success");
			request.getRequestDispatcher("addMeetingRoom.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "addRoom is false");
			request.getRequestDispatcher("addMeetingRoom.jsp").forward(request, response);
		}
	}

}
