package entity;

public class Message {
	private int id;
	private String title;
	private String content;
	private String type;
	private String date;
	private String recipient;
	private String if_read;
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getTitle(){
		return title;
	}
	public void setTitle(String title){
		this.title=title;
		
	}
	public String getContent(){
		return content;
	}
	public void setContent(String content){
		this.content=content;
	}
	public String getType(){
		return type;
	}
	public void setType(String type){
		this.type=type;
	}
	public String getDate(){
		return date;
	}
	public void setDate(String date){
		this.date=date;
	}
	public String getRecipient(){
		return recipient;
	}
	public void setRecipient(String recipient){
		this.recipient=recipient;
	}
	public String getIf_read(){
		return if_read;
	}
	public void setIf_read(String setIf_read){
		this.if_read=setIf_read;
	}
	

}
