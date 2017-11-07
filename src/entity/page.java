package entity;

public class page {
	private int num;
	private int size;
	private int rowCount;
	private int pageCount;
	private int startRow;
	private int first=1;
	private int last;
	private int next;
	private int prev;
	
	public page(int size,String str_num,int rowCount){
		int num=1;
		if(str_num!=null){
			num=Integer.parseInt(str_num);
		}
		this.num=num;
		this.size=size;
		this.rowCount=rowCount;
		this.pageCount=(int)Math.ceil((double)rowCount);
		this.num=Math.min(this.num,pageCount);
		this.num=Math.max(1,this.num);
		this.startRow=(this.num-1)*size;
		this.last=this.pageCount;
		this.next=Math.min(this.pageCount,this.num+1);
		this.prev=Math.max(1,this.num-1);
		
		
			
		}
	
		public int getNum(){
			return num;
		}

			public int getPageCount(){
		return rowCount/size;
			}
		
		public int getNext(){
			return next;
			
		}
		
		public int getPrev()
		{
			
			return prev;
			
		}
		
		public int getLast()
		{
			
			return rowCount/size;
		}
	
		public int getStartRow()
		{
			
			return startRow;
		}
		
		public int getSize()
		{
			
			return size;
			
		}
}