package meeting.xin.servlet.MeetingServlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meeting.xin.service.JoinMeetingService;
import meeting.xin.service.MeetingService;
import meeting.xin.vo.Meeting;

/**
 * Servlet implementation class AddMyBookMeetingByJspServlet
 */
@WebServlet("/AddMyBookMeetingByJspServlet")
public class AddMyBookMeetingByJspServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMyBookMeetingByJspServlet() {
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
		JoinMeetingService js = new JoinMeetingService();
		String mname=request.getParameter("mname");
		String rnameId=request.getParameter("room");
		String mpeople=request.getParameter("mpeople");
		String mstart=request.getParameter("mstart");
		String mend=request.getParameter("mend");
		String mnote=request.getParameter("mnote");
		String[] meid=request.getParameterValues("meid");
		String eid=request.getSession().getAttribute("sessioneid").toString();
		System.out.println(Timestamp.valueOf(mend)+"==mend==");
		//System.out.println(meid.length+"meid");
		if(ms.addMeeting(new Meeting(mname,Integer.parseInt(mpeople),Timestamp.valueOf(mstart),
		Timestamp.valueOf(mend),mnote,Integer.parseInt(rnameId),Integer.parseInt(eid)))){
			//request.setAttribute("showMyCanUseMeeting",rs.showMyCanUseMeeting());
			//request.setAttribute("showAllDeptList", ds.showAllDept());
			js.addEmp(meid);
	
			request.getRequestDispatcher("bookMeeting.jsp").forward(request, response);
		}
	
	}

}
