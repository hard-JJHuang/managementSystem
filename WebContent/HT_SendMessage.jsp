<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
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
    <title>发布消息</title>
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
    <div id="head">

    </div>    <section>
        <div class="container">
            <div class="row noti-div">
                <div class="col-lg-3 col-md-3 col-sm-3  text-center">
                    <a href="admin-user-list.html">
                        <div class="alert alert-danger">
                            <i class="fa fa-user fa-4x"></i>
                            <span class="label label-info">新用户</span>
                            <span class="label label-danger">5</span>
                            <p>
                              <b>本周新注册用户总数</b>>

                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3  text-center">
                    <a href="admin-open-tickets.html">
                        <div class="alert alert-success">
                            <i class="fa fa-folder-open-o fa-4x"></i>
                            <span class="label label-warning">标题</span>
                            <span class="label label-success">45</span>
                            <p>
                               <b>尚没回复的标题</b>

                            </p>
                        </div>
                    </a>
                </div>

                
                <div class="col-lg-3 col-md-3 col-sm-3  text-center">
                    <a href="admin-support-cat.html">
                        <div class="alert alert-warning">
                            <i class="fa fa-briefcase fa-4x"></i>
                            <span class="label label-success">支持类别</span>
                            <span class="label label-warning">4</span>
                            <p>
                                <b>总支持类别</b>

                            </p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 text-center">
                    <a href="admin-user-list.html">
                        <div class="alert alert-info">
                            <i class="fa fa-recycle fa-4x"></i>

                            <span class="label label-danger">所有用户</span>
                            <span class="label label-info">145</span>
                            <p>
                                <b>注册用户总数</b>
                            </p>

                        </div>
                    </a>
                </div>
            </div>


        </div>

    </section>
    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9 alert alert-info">

                    <h3 class=" text-center">撰写新通知</h3>
                   <div class="hr-div"> <hr /></div>
                   
                   
                    <form action="HT_SendSuccess.jsp" method="post">
                    <div class="form-group col-lg-12 col-md-12 col-sm-12" >
                    <label>消息id</label><br>
                    <input type="text" required="required"placeholder="消息ID号" name="id">
                    </div>


                       
                     
                     
                        <div class="form-group col-lg-12 col-md-12 col-sm-12" >
                            <label>请写出内容主题</label>
                            <input type="text" class="form-control" required="required" placeholder="输入主题 " name="title" />
                        </div>
                        <div class="from-group col-lg-12 col-md-12 col-sm-12">
                        <label>请撰写内容类型</label>
                        <input type="text" class="form-control" required="required" placeholder="类型...." name="type">
                        
                        </div>
                        <div class="form-group col-lg-12 col-md-12 col-sm-12">
                            <label>请撰写通知文本</label><br>
                            <textarea rows="auto" cols="auto" name="content" class="form-control" required="required" placeholder="文本..." style="text-align:left;vertical-align:top;height:250px"></textarea>

                        </div>

                        <div class="form-group col-lg-12 col-md-12 col-sm-12">
                        <input type="text" required="required" placeholder="输入日期" name="date" placeholder="日期">
                        <input type="text" required="required" placeholder="教师工作号" name="teacherid" placeholder="教师工作号">
                        <input type="submit" value="发布" >

                        </div>
                    </form>

                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <a href="index.html" class=" label label-danger"><strong>LOGOUT / SINGOUT</strong> </a>
                    <div class="list-group">
                        <a href="#" class="list-group-item active">快速链接
                        </a>

                        <a href="HT_SendMessage.jsp" class="list-group-item">撰写通知</a>
                        <a href="HT_ShowStudent.jsp" class="list-group-item">所有用户信息</a>
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
                    <h3><b>物理地址</b></h3>
                    <p>
                        <i>地址 :</i> 125/890 , New York Street,
                        <br />
                        United States of America (USA).
                         <br />
                       &copy; 2014 yourdomian | More Templates 
                   
                    </p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <h3>Get Quick Help</h3>
                    <h4><span>Call: </span>0756-</h4>
                    <h4><span>E-mail: </span>jwc.bnuz.edu.cn</h4>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">

                    <h3>订阅更新</h3>
                    <form>

                        <div class="form-group">
                            <input type="text" class="form-control" required="required" placeholder="Your Email" />
                        </div>


                        <div class="form-group">
                            <button type="submit" class="btn btn-danger">确认订阅</button>
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
