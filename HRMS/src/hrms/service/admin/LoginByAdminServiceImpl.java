package hrms.service.admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hrms.dao.admin.ILoginByAdminDao;
import hrms.vo.AdminVo;
@Service
public class LoginByAdminServiceImpl implements ILoginByAdminService{
	@Resource(name="loginByAdminDaoImpl")
	private ILoginByAdminDao LoginByAdminDao;	
	public ILoginByAdminDao getLoginByAdminDao() {
		return LoginByAdminDao;
	}

	public void setLoginByAdminDao(ILoginByAdminDao loginByAdminDao) {
		LoginByAdminDao = loginByAdminDao;
	}

	//管理员根据，用户和密码登录，根据状态判断是否成功
	@Override
	public AdminVo loginByAdmin(AdminVo adminVo) {
		// TODO Auto-generated method stub
		return LoginByAdminDao.loginByAdmin(adminVo);
	}

}
