package com.bs.zp.bean;

public class Page
{
	//总页数
	private int pages;
	//当前页数
	private int now;
	//数据总数
	private int count;
	//每页数据数
	private int num;
	//状态位
	private String turn;
	/**
	 * @return the pages
	 */
	public int getPages()
	{
		return pages;
	}
	/**
	 * @param pages the pages to set
	 */
	public void setPages(int pages)
	{
		this.pages = pages;
	}
	/**
	 * @return the now
	 */
	public int getNow()
	{
		return now;
	}
	/**
	 * @param now the now to set
	 */
	public void setNow(int now)
	{
		this.now = now;
	}
	/**
	 * @return the count
	 */
	public int getCount()
	{
		return count;
	}
	/**
	 * @param count the count to set
	 */
	public void setCount(int count)
	{
		this.count = count;
	}
	/**
	 * @return the num
	 */
	public int getNum()
	{
		return num;
	}
	/**
	 * @param num the num to set
	 */
	public void setNum(int num)
	{
		this.num = num;
	}
	/**
	 * @return the turn
	 */
	public String getTurn()
	{
		return turn;
	}
	/**
	 * @param turn the turn to set
	 */
	public void setTurn(String turn)
	{
		this.turn = turn;
	}
}
