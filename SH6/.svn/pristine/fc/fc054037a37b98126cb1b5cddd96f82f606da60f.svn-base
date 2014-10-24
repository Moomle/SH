package ffof.express.model;

import java.util.List;

import ffof.express.constant.Constant;

public class Pager<T> {
	private List<T> data;
	private int pageCount;
	private int pageSize = Constant.SIZE_OF_PAGE; 
	private int curPageNum;  //当前页码
	private long totalCount;  //总记录数
	
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return (int)(totalCount + pageSize - 1)/ pageSize;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = this.totalCount % this.pageSize == 0 ? (int) (this.totalCount/this.pageSize) : (int) (this.totalCount/this.pageSize + 1);
	}
	public long getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}
	public int getCurPageNum() {
		return curPageNum;
	}
	public void setCurPageNum(int curPageNum) {
		this.curPageNum = curPageNum;
	}
	@Override
	public String toString() {
		String s = "DataSize:"+this.getData().size()+",pageCount:"+this.getPageCount() +",totalCount:" + this.getTotalCount() + ", curPageNum:" + this.getCurPageNum() + ",pageSize:"+this.getPageSize();
		return s;
	}
	
	

}
