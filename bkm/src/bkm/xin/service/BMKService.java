package bkm.xin.service;

import java.util.ArrayList;

import bkm.xin.dao.BKMDao;
import bkm.xin.vo.BKM;

public class BMKService {
	public  ArrayList<BKM> showBook(){
		BKMDao dao = new BKMDao();
		return dao.showBook();
	}
	public boolean borrowBook(String name){
		BKMDao dao = new BKMDao();
		  return dao.borrowBook(name);
	}
	public static void main(String[] args) {
		System.out.println(new BMKService().borrowBook("你好"));

	}

}
