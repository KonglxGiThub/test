package meeting.xin.servlet.MeetingServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.MeetingService;

/**
 * Servlet implementation class ShowMyMeetingPeopleServlet
 */
@WebServlet("/ShowMyMeetingPeopleServlet")
public class ShowMyMeetingPeopleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowMyMeetingPeopleServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
	ServletException, IOException {
		// TODO Auto-generated method stub
		MeetingService ms = new MeetingService();
		String umid = request.getParameter("mid").trim();
     	//System.out.println(umid+"=====showmymeetpeople===========");
		if(ms.showMyMeetingPeople(Integer.parseInt(umid))!=null){
			request.setAttribute("showMyMeetingPeopleList",
			ms.showMyMeetingPeople(Integer.parseInt(umid)));
			request.getRequestDispatcher("updateMyBookMeeting.jsp").forward(request, response);
		}else{
			request.setAttribute("msg","show mybookmeeting is null");
			request.getRequestDispatcher("updateMyBookMeeting.jsp").forward(request, response);
		}
		
	}

}
