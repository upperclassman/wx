# daily_reminder
微信天气推送

教程链接


网址1   http://mp.weixin.qq.com/debug/cgi-bin/sandboxinfo?action=showinfo&t=sandbox/index

网址2   https://id.qweather.com/


# 模板内容如下：

{{date.DATA}} 
地区：{{region.DATA}} 
天气：{{weather.DATA}} 
气温：{{temp.DATA}} 
风向：{{wind_dir.DATA}} 

今天是我们恋爱的第{{love_day.DATA}}天 
{{birthday1.DATA}} 
{{birthday2.DATA}}


{{note_en.DATA}} 
{{note_ch.DATA}}


# 部署
1. 把文件夹上传到云服务器
2. cd到上传的目录下
3. 构建docker镜像  docker build .
4. docker images 查看构建成功的镜像
5. docker run 9c37c311923f

# 设置定时任务
crontab -e

*/1 * * * * docker run 9c37c311923f

systemctl restart crond