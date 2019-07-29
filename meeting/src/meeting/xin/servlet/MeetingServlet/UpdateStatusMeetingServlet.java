package meeting.xin.servlet.MeetingServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.MeetingService;

/**
 * Servlet implementation class UpdateStatusMeetingServlet
 */
@WebServlet("/UpdateStatusMeetingServlet")
public class UpdateStatusMeetingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusMeetingServlet() {
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
		String umid=request.getParameter("mid");
		String mstatus=request.getParameter("mstatus");
		String cmreason=request.getParameter("cmreason");
		//System.out.println("原因是"+cmreason+"	状态是"+mstatus+"		会议室id是"+umid);
		boolean falg=ms.updateStatusMeeting(Integer.parseInt(umid), cmreason,Integer.parseInt(mstatus));
		if(falg){
			request.setAttribute("msg", "cancel is ok");
			request.getRequestDispatcher("myMancelMeeting.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "cancel is false");
			request.getRequestDispatcher("myMancelMeeting.jsp").forward(request, response);
		}
		
	}

}
