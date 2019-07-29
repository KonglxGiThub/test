package meeting.xin.servlet.MeetingServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.MeetingService;

/**
 * Servlet implementation class ShowMyMeeting7DayServlet
 */
@WebServlet("/ShowMyMeeting7DayServlet")
public class ShowMyMeeting7DayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowMyMeeting7DayServlet() {
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
		MeetingService ms = new MeetingService();
		String eid = request.getSession().getAttribute("sessioneid").toString();
		//String ename =request.getSession().getAttribute("sessionename").toString();
		//System.out.println(eid+"======eid===========================");
		if(ms.showMyMeeting7(Integer.parseInt(eid))!=null&&ms.showMyCancelMeeting(Integer.parseInt(eid))!=null){
			//request.setAttribute("ename",ename);
			request.setAttribute("myBookCancelMeetingList", ms.showMyCancelMeeting(Integer.parseInt(eid)));
			request.setAttribute("myBookGoingMeetingList", ms.showMyMeeting7(Integer.parseInt(eid)));
			request.getRequestDispatcher("myNewj.jsp").forward(request, response);
			System.out.println(ms.showMyCancelMeeting(Integer.parseInt(eid)).size()+"==xxx===="+eid);
	
		}else{
			//request.setAttribute("myBookMeetingList","show mygoingbookmeeting is null");
			request.getRequestDispatcher("myNewj.jsp").forward(request, response);
	
		}
	}

}
