$(function() {
    $("#email").focusout(showNums);
    $("#likeQues").click(likeQues);
    $("#disLikeQues").click(disLikeQues);
    $("#likeSol").click(likeSol);
    $("#disLikeSol").click(disLikeSol);
    $('#solutionAjax').click(auth);
    $('#idForAuthCheck').click(auth);
    $('#authenticateForLike').click(auth);
    $('#authenticateForDisLike').click(auth);
    $('#authenticateForFavourit').click(auth);
    $('#makeFavQues').click(makeFavQues);
    });

function showNums() {
	
	//alert("Ajax Call");
	var email = $('#email').val();
	//  var pass = $('#pass').val();
	  //alert(email);
  $.ajax({  
	  type: "POST",
	  url: "ajax.spring",
	  data: "email="+email,
	  dataType:'json',
	  cache: false,
      success: function showStatus(jsonData) {
    		//var info = $('#info').val();
    		//alert(info);
    	 // var data = jsonData.msg;
    		//alert("In showNumberList2");
    		//alert(jsonData.status);
    		//alert(jsonData.msg);
    		if(jsonData.status=="ok"){
    			
    			//alert("Not Matched");
    			
    			//$('#info').load("./NewFile.html");
    			//$('#info').html("hi");
    			//window.location.href="./login.jsp";
    			$('#info').html(jsonData.msg);
    			//info.write(jsonData.msg);
    			//alert(jsonData.msg);
    			//info.val();
    			//window.location.href="./h.jsp";
    			
    		}
    		else{
    			//alert("Not Ok else");
    			$('#email').val("");
    			$('#info').html(jsonData.msg);
    			//$("#hi").load("../error.html");
    			//$("#hi").load("error.html");
    			   //$("#t1").html(jsonData.empid);
    		}
    		//var z = "var q="+jsonData;
    		//eval(z);
    		
    		//alert(z);
    	},
      error:function() { alert("we got trouble"); }}
  );
}


function auth(){
	var email = $('#email').val();
	$.ajax({  
		  type: "POST",
		  url: "authenticate.spring",
		  dataType:'json',
		  cache: false,
	      success: function showStatus(jsonData) {
	    				if(jsonData=="/ok.jsp"){	}
	    				else{    					
	    					//alert('hi');
	    					 $(function() {
	    						    $("#dialog-confirm").dialog({
	    						      resizable: false,
	    						      height:90,
	    						      modal: true,
	    						      buttons: {
	    						        "No Thanks": function() {
	    						          $( this ).dialog( "close" );
	    						          window.location.href="./first.jsp";
	    						        },
	    						        "Login/Sign Up": function() {
	    						          $( this ).dialog( "close" );
	    						          window.location.href="./Login_Signup.jsp";
	    						        }
	    						      }
	    						    });
	    						  });
	    					
	    					
	    					
	    					}},	
	      error:function() { alert("we got trouble");}});}



function likeQues(jsonData) {
	var quesId = $('#quesId').val();
  $.ajax({  
	  type: "POST",
	  url: "vote.spring",
	  data: "vote="+"like"+"&quesId="+quesId,
	  dataType:'json',
	  cache: false,
      success: function showStatus(jsonData) {
    		
    	  $('#quesVotes').html(jsonData.votes);
    		
    	},
      error:function() { alert("we got trouble"); }}
  );
}


function disLikeQues(jsonData) {
	var quesId = $('#quesId').val();
  $.ajax({  
	  type: "POST",
	  url: "vote.spring",
	  data: "vote="+"disLike"+"&quesId="+quesId,
	  dataType:'json',
	  cache: false,
      success: function showStatus(jsonData) {
    		
    	  $('#quesVotes').html(jsonData.votes);
    		
    	},
      error:function() { alert("we got trouble"); }}
  );
}


function likeSol(jsonData) {
	var solId = $('#solId').val();
  $.ajax({  
	  type: "POST",
	  url: "voteSol.spring",
	  data: "vote="+"like"+"&solId="+solId,
	  dataType:'json',
	  cache: false,
      success: function showStatus(jsonData) {
    		
    	  $('#solVotes').html(jsonData.voteSol);
    		
    	},
      error:function() { alert("we got trouble"); }}
  );
}


function disLikeSol(jsonData) {
	var solId = $('#solId').val();
  $.ajax({  
	  type: "POST",
	  url: "voteSol.spring",
	  data: "vote="+"disLike"+"&solId="+solId,
	  dataType:'json',
	  cache: false,
      success: function showStatus(jsonData) {
    		
    	  $('#solVotes').html(jsonData.voteSol);
    		
    	},
      error:function() { alert("we got trouble"); }}
  );
}



function makeFavQues() {
	var quesId = $('#quesId').val();
  $.ajax({  
	  type: "POST",
	  url: "makeFavQues.spring",
	  data: "quesId="+quesId,
	  dataType:'json',
	  cache: false,
      success: function showStatus() {
    		
    	  $('#makeFavQues').html("");
    		
    	},
      error:function() { alert("we got trouble"); }}
  );
}