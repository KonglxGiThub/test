package test.interceptor;

import java.sql.Connection;
import java.util.Properties;

import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;


@Intercepts(value = { @Signature(args = { Connection.class }, method = "prepare", type = StatementHandler.class) })
public class LogInterceptor implements Interceptor{

	@Override
	public Object intercept(Invocation arg0) throws Throwable {
		// TODO Auto-generated method stub
		StatementHandler st =(StatementHandler)arg0.getTarget();
		//输出sql语句
		System.out.println(st.getBoundSql().getSql());
		//跳往下一个请求
		return arg0.proceed();
	}
	
	//plugin方法是拦截器用于封装目标对象的，通过该方法我们可以返回目标对象本身，也可以返回一个它的代理。
	@Override
	public Object plugin(Object arg0) {
		// TODO Auto-generated method stub
		return Plugin.wrap(arg0,this);
	}
	
	// 方法是用于在Mybatis配置文件中指定一些属性的。
	@Override
	public void setProperties(Properties arg0) {
		// TODO Auto-generated method stub
		System.out.println(arg0.getProperty("key1"));
	}

}
