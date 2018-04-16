$(function() {
				//群聊头像、名字、内容 start  
				var array = [{
						headImg: "img/toux.png", //头像  
						name: "百分比：", //昵称 
						content: "今天的作业" //群聊时间  
					},
					{
						headImg: "img/toux.png", //头像  
						name: "张了：", //昵称 
						content: "还有作业？" //进群提示  
					},
					{
						headImg: "img/toux.png", //头像  
						name: "莽夫：", //昵称 
						content: "有点乱啊。" //进群提示  
					},
					{
						headImg: "img/toux.png", //头像  
						name: "一㔿：", //昵称 
						content: "这么多人？" //进群提示  
					},
					{
						headImg: "img/toux.png", //头像  
						name: "老王：", //昵称  
						content: "666" //聊天内容  
					},
					{
						headImg: "img/toux.png",
						name: "张三：",
						content: "哈哈哈"
					},
					{
						headImg: "img/toux.png",
						name: "小朋友：",
						content: "<img class='img2' src='img/toux.png'/>"
					},
					{
						headImg: "img/toux.png",
						name: "艾伦：",
						content: "好好听课"
					},
					{
						headImg: "img/toux.png",
						name: "小朋：",
						content: "这题很难啊！"
					},
					{
						headImg: "img/toux.png",
						name: "小月：",
						content: "不会做啊！"
					},
					{
						headImg: "img/toux.png",
						name: "小民：",
						content: "老师慢点"
					}
				];
				function randomsort(a, b) {
               return Math.random()>.5 ? -1 : 1;
               //用Math.random()函数生成0~1之间的随机数与0.5比较，返回-1或1
               }
				array.sort(randomsort);
				//群聊头像、名字、内容 end  
				//每隔0.5秒有序显示一条群聊信息 start  
				
				var i = 0;

				function massageShow() {
					switch(i) {
						case 0:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 1:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 2:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 3:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 4:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 5:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 6:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 7:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 8:
							$("#chartCon").append("<div class='img1'><img class='img2' src='" + array[i].headImg + "'/><div style='margin-left:20px;'>" + array[i].name + "</div><div>" + array[i].content + "</div></div><br/>");
							i++;
							break;
						case 9:
							clearInterval(t); //清除定时器  
							break;
					}
				}
				var t = setInterval(massageShow, 1000);
				//每隔0.5秒有序显示一条群聊信息 end  
			});