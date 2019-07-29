package meeting.xin.servlet.MeetingServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.MeetingService;

/**
 * Servlet implementation class MyBookMeetingServlet
 */
@WebServlet("/MyBookMeetingServlet")
public class MyBookMeetingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyBookMeetingServlet() {
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
		if(ms.showMyMeeting(Integer.parseInt(eid))!=null){
			request.setAttribute("myBookMeetingList", ms.showMyMeeting(Integer.parseInt(eid)));
			request.getRequestDispatcher("myMeeting.jsp").forward(request, response);
			//System.out.println(ms.showMyMeeting(Integer.parseInt(eid)).size()+"======"+eid);
	
		}else{
			request.setAttribute("myBookMeetingList","show mybookmeeting is null");
			request.getRequestDispatcher("myMeeting.jsp").forward(request, response);
	
		}
	}

}
