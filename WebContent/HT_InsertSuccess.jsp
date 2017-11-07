<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Support Admin</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Nova+Flat' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css' />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<%
	     request.setCharacterEncoding("utf-8");
	     Insert_Student model=new Insert_Student();
	     int id=Integer.parseInt(request.getParameter("id"));
	     int number=Integer.parseInt(request.getParameter("number"));
	 	 String name=request.getParameter("name").toString();
	 	 int grade=Integer.parseInt(request.getParameter("grade"));
	 	 String major=request.getParameter("major").toString();
	 	 int clas=Integer.parseInt(request.getParameter("clas"));
 	
	 	 String position=request.getParameter("position").toString();
	 	 Student stuednt=model.insert(id,number,name,grade,major,clas,position);
 		 // out.print(user.getId()+""+user.getName()+""+user.getPlace()+""+user.getGuige()+""+user.getDanwei()+""+user.getShuliang()+""+user.getPrice());
	
	%>
	
	
	<%
	 studentpage s=new studentpage();
    int rowCout=s.couts();
	

    page p1=new page(10,request.getParameter("num"),rowCout);
	int next=p1.getNext();
    request.setAttribute("page",p1);
   int prev=p1.getPrev();
   int last=p1.getLast();
    int num=p1.getNum();
    int pageCount=p1.getPageCount();
    int startRow=p1.getStartRow();
    int size=p1.getSize();
    studentpage student=new studentpage();       //调用模型
    
  List<Student> list=student.Liststudents(startRow,size);  //执行模型中查询方法，并返回结果
 // request.setAttribute("students",list);
   %>

      <div id="head">
        <div class="container">
            <div class="row">

                <div class="col-lg-4 col-md-4 col-sm-4">
                    <a href="index.html">
                    <img src="assets/img/logo.png"  />
                        </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 text-center" >
                     <img src="assets/img/top-mouse.png "  class="header-mid" />
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <h4><span>Call:</span> +01-4589-987-567</h4>
                    <h4><span>E-mail:</span> info@domain.com</h4>
                </div>
                
            </div>
        </div>
    </div>    
    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9 ">

                     <h3>All User List <span class="label label-danger"> New : 5</span></h3>
                      <div class="hr-div"> <hr /></div>
                                                  <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>用户ID</th>
                                              <th>学号</th>
                                            <th>姓名</th>
                                            <th>年级</th>
                                            <th>专业</th>
                                             <th>班级</th>
                                             <th>职位</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                     
                                    <tr>
                                         <%for(int i=0;i<list.size();i++){%>   
  										 <tr>    
    									 <td><%=list.get(i).getId() %></td>
    									<td><%=list.get(i).getNumber() %></td>
   					 					<td><%=list.get(i).getName() %></td>
   		 								<td><%=list.get(i).getGrade() %></td>
   			 							<td><%=list.get(i).getMajor() %></td>
    									<td><%=list.get(i).getClas() %></td>
   							 			<td><%=list.get(i).getPosition() %></td>
   									 </tr>
 									 <%  
 									 }
    								 %>
                                      </tr>
                                    </tbody>
                                </table>
                            </div>
                    <ul class="pagination">
 
  
  <li> <a href = "HT_ShowStudent.jsp?num=0" >首页</a> </li> 
	<li><a href = "HT_ShowStudent.jsp?num=<%=prev%>" >上一页</a></li>  
	<li><a href = "HT_ShowStudent.jsp?num=<%=next%>" >下一页</a> </li> 
	<li><a href = "HT_ShowStudent.jsp?num=<%=last%>" >尾页</a> </li>  



                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <a href="index.html" class=" label label-danger"><strong>LOGOUT / SINGOUT</strong> </a>
                    <div class="list-group">
                        <a href="#" class="list-group-item active">Quick Links
                        </a>

                        <a href="HT_SendMessage.jsp" class="list-group-item">撰写通知</a>
                        <a href="HT_SelectStudent.jsp" class="list-group-item">查询学生信息</a>
                        <a href="HT_InsertStudent.jsp" class="list-group-item">插入学生信息</a>
                        <a href="HT_DeleteStudent.jsp" class="list-group-item">删除学生信息</a>
                         <a href="HT_UpdateStudent.jsp" class="list-group-item">修改学生信息</a>

                    </div>
                    <div class="alert alert-danger text-center">
                        <h3>Import Information</h3>
                       Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                         Nulla pretium lectus vel justo iaculis blandit.  
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <div id="footer">
        <div class="container">

            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <h3>Physical Location</h3>
                    <p>
                        <i>Addresss :</i> 125/890 , New York Street,
                        <br />
                        United States of America (USA).
                         <br />
                       &copy; 2014 yourdomian | More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                   
                    </p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <h3>Get Quick Help</h3>
                    <h4><span>Call: </span>+01-4589-987-567</h4>
                    <h4><span>E-mail: </span>info@domain.com</h4>
                    <h4><span>Skype:</span> sonasup</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">

                    <h3>Subscribe For Updates</h3>
                    <form>

                        <div class="form-group">
                            <input type="text" class="form-control" required="required" placeholder="Your Email" />
                        </div>


                        <div class="form-group">
                            <button type="submit" class="btn btn-danger">Click To Subscribe</button>
                        </div>
                    </form>
                </div>




            </div>

        </div>

    </div>
    <!--  Jquery Core Script -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>