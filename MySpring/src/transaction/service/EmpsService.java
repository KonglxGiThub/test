package transaction.service;

import transaction.dao.EmpsDao;

public class EmpsService {
	private EmpsDao dao;

	public EmpsDao getDao() {
		return dao;
	}

	public void setDao(EmpsDao dao) {
		this.dao = dao;
	}
	//添加一组员工
	public void addGroup(){
		dao.addEmps(133, "tom", 22, "dd");
		dao.addEmps(155, "tom5", 22, "d22d");
		System.out.println(1/0);
		dao.addEmps(135, "tom3", 22, "d11d");
		
	}
}
