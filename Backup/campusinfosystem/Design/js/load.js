// JavaScript Document
 $(document).ready(function() {
	  
	
	 var f=0;
	 
	 $("#b6").click(function() {
		 if(f==0)
		 {
		 	$("#abs").fadeIn(100);
			f=1;
		 }
		 else
		 {
			 $("#abs").fadeOut(100);
			 f=0;
		 }
	  });
	
});