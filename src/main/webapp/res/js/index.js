/*
$.post("/test/getUserList.do",{"id":"456","name":"jquery"},function(result){
	console.log("jquery = " + JSON.stringify(result));
});
*/

/*
var params = new URLSearchParams();
params.append('id', '123');
params.append('name', 'axios');
axios.post('/test/getUserList.do',params).then(function(result){
    console.log("axios = " + JSON.stringify(result.data));
}).catch(function () {
    console.log("服务器端异常");
});
*/

/*
$('#test').bind('input propertychange', _.debounce(function() {  
    console.log("value = " + $(this).val() + "  发送ajax请求......");     
},500));
*/

var app = new Vue({
	el : "#app",
	data : {
		username:''
	},
	watch:{
		username:function(newVal){
			this.queryByUsername(newVal);
		}
	},
	methods:{
		queryByUsername:_.debounce(function(username){
			$.post("/test/findUsersByUsername.do",{"username":username},function(result){
				console.log(JSON.stringify(result));
			});
		},500)
	}
});