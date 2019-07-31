package com.bs.zp.util;

import java.util.List;
import java.util.Map;

import com.bs.zp.bean.Position;
import com.bs.zp.common.ViewJob;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ViewJob vj = new ViewJob();
		Map<String, List> map = vj.ViewJob();
		int i =0;
		for (String key : map.keySet()) {
			i++;
			List list = map.get(key);
			for(int j=0;j<list.size();j++){
				Position pos = (Position)list.get(j);
				if("--".equals(pos.getN2())){
					System.out.println("»»ÐÐ");
				}
				System.out.println(pos.getN2());
			}
		}
	}

}
