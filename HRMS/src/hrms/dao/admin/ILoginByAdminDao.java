package hrms.dao.admin;

import hrms.vo.AdminVo;

public interface ILoginByAdminDao {
	//管理员根据，用户和密码登录，根据状态判断是否成功
	public AdminVo loginByAdmin(AdminVo adminVo);
}
