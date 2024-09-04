
const express = require('express') // 引入express框架
const app = express() // 创建express应用实例

// 创建一个路由
/**
 *  http://ip:port/test
 */

app.get('/find/:zhanghao/:mima', async (req, res) => {
	// request 请求对象    请求包
	// response 响应对象   响应包

	// 1.接收请求
	// 2.处理业务逻辑
	// 3.响应数据

	try{
      const zhanghao=req.params.zhanghao
      const mima=req.params.mima
      //使用find 查询所有匹配指定name的数据记录 
      const results=await users.find({zhanghao,mima})
      if(results.length>0){
         //如果找到匹配的记录，则返回所有匹配的记录
         res.json({data:results,message:"登录成功08/31"})
      }else{
         res.status(404).json({message:"未找到匹配记录2024"})
      }
   }catch(errror){
      res.status(500).json({message:"服务器内部错误"})
   }
})

app.listen(3000, () => console.log('服务器启动成功!,监听3000端口...'))
