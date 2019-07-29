package meeting.xin.servlet.RoomServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.RoomService;
import meeting.xin.vo.Room;

/**
 * Servlet implementation class ShowRoomServlet
 */
@WebServlet("/ShowRoomServlet")
public class ShowRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowRoomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 
	ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
	ServletException, IOException {
		// TODO Auto-generated method stub
		RoomService rs = new RoomService();
		ArrayList<Room> showAllRoom=null;
		if(rs.showAllRoom()!=null){
			showAllRoom = rs.showAllRoom();
			request.setAttribute("msg", "addRoom is success");
			request.setAttribute("roomList",showAllRoom);
			request.getRequestDispatcher("showRoom.jsp").forward(request, response);
		}
		
	}

}
