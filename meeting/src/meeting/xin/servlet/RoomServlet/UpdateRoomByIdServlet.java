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
 * Servlet implementation class UpdateRoomByIdServlet
 */
@WebServlet("/UpdateRoomByIdServlet")
public class UpdateRoomByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateRoomByIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);	
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		// TODO Auto-generated method stub
		RoomService rs= new RoomService();
		String urid=request.getParameter("rid").trim();
		String urname=request.getParameter("rname").trim();
		String urpeople=request.getParameter("rpeople").trim();
		String urstatus=request.getParameter("rstatus").trim();
		String urnote=request.getParameter("rnote").trim();
		String urnum=request.getParameter("rnum").trim();
		
		boolean falg = rs.updateRoom(new Room(Integer.parseInt(urid),Integer.parseInt(urnum),
				urname,Integer.parseInt(urstatus),urnote,Integer.parseInt(urpeople)));
		if(falg){
			request.setAttribute("msg", "updatRoom is success");
			request.getRequestDispatcher("updateRoom.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "updatRoom not success");
			request.getRequestDispatcher("updateRoom.jsp").forward(request, response);
		}	
	}

}

