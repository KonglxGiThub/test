package xin.bean.proxy;

public class Target implements IProxy {
	//切入目标
	@Override
	public void add() {
		// TODO Auto-generated method stub
		System.out.println("add");
	}

	@Override
	public void del() {
		// TODO Auto-generated method stub
		System.out.println("del");
	}

}
