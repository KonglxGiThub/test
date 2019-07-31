package xin.bean.proxy;

public class Proxy implements IProxy {
	//代理
	
	//需要加入Target类；切入目标，可以有好几个目标，只有一个代理
	private Target target;
	@Override
	public void add() {
		// TODO Auto-generated method stub
		System.out.println("前置通知");
		target.add();
		System.out.println("后置通知");
	}

	@Override
	public void del() {
		// TODO Auto-generated method stub
		target.del();
	}

}
