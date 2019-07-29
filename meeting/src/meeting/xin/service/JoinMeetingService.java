package meeting.xin.service;

import meeting.xin.dao.JoinMeetingDao;

public class JoinMeetingService {
	//预定会议，添加与会人员
		public boolean addEmp(String[]emp){
			JoinMeetingDao dao = new JoinMeetingDao();
			//System.out.println(dao.addEmp(emp));
			return dao.addEmp(emp);
		}
//		public static void main(String[] args) {
//			String[] emp ={"25","26"};
//			new JoinMeetingService().addEmp(emp);
//		}
}
