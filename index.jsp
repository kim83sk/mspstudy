<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.html 입니다</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		$.ajax({
            method: "get",
            dataType:"jsonp",
            jsonp:"abc",
            url: "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx",
            data: {
            Query:"미움받을 용기",
            TTBKey:"ttbminico821428001",
            output:"JS",
            cover:"big",
            callback:"aladinCallBack"
			}
		});
});

fuction aladinCallBack(success, data){
	alert(data.item[0].title);
    console.log(success);
    console.log(data);
    var title=data.item[0].title;
    var cover=data.item[0].cover;
    var contents=data.item[0].content;
    // $("#title").append("<strong>"+title+"</strong>");
    //  $("#content").append(contents);   
}

</script>
</head>
<body>
</body>
</html>