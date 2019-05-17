const express=require("express");
const bodyParser=require('body-parser');
const userRouter=require('./routes/user.js');
//创建服务器
var server=express();
//监听端口
server.listen(8080);
//托管静态资源
server.use(express.static('public'));
//引入body-Parser中间件，将post请求的数据直接格式化为对象，req.body返回对象
server.use(bodyParser.urlencoded({
	extended:false
}) );
server.use('/users',userRouter);
