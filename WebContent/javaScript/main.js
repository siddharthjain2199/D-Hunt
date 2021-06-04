function populate(product_category_id,product_subcategory_id){
	
	var product_category_id= document.getElementById('product_category_id');
	var product_subcategory_id = document.getElementById('product_subcategory_id');
	
	product_subcategory_id.innerHTML ="choose category";
    if(product_category_id.value == "1"){
    	var optionArray = ["|","1|Top","2|Bottom"];	
    } else if(product_category_id.value == "2"){
    	var optionArray = ["|","1|Top","2|Bottom"];	
    } else if(product_category_id.value == "3"){
    	var optionArray = ["|","1|Top","2|Bottom"];	
    } else if(product_category_id.value == "4"){
    	var optionArray = ["|","1|Top","2|Bottom"];	
    }
    for(var option in optionArray){
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		product_subcategory_id.options.add(newOption);
	}
}
function populate1(product_subcategory_id,product_type_id){
	
	var product_subcategory_id = document.getElementById('product_subcategory_id');
	var product_type_id = document.getElementById('product_type_id');
	product_type_id.innerHTML ="choose Sub category";
    if(product_subcategory_id.value == "1"){
    	var optionArray = ["|","1|T-shirt","2|Shirt","3|Blazers","7|Sherwani","12|jackets","11|Kurtas"];	
    } else if(product_subcategory_id.value == "2"){
     	var optionArray = ["|","4|Jeans","5|Pants","6|Trousers"];	
    } 
    else if(product_subcategory_id.value == "1"){
    	var optionArray = ["|","1|T-shirt","2|Shirt","3|Blazers","15|Kurtis","13|Tops"];	
    } else if(product_subcategory_id.value == "2"){
     	var optionArray = ["|","4|Jeans","5|Pants","6|Trousers","9|leggings"];	
    }
    else if(product_subcategory_id.value == "1"){
    	var optionArray = ["|","1|T-shirt","2|Shirt","14|Sweaters","12|jackets"];	
    } else if(sub_category.value == "2"){
     	var optionArray = ["|","4|Jeans","5|Pants","8|Shorts"];	
    }
    else if(product_subcategory_id.value == "1"){
    	var optionArray = ["|","13|Top & T-shirts",];	
    } else if(product_subcategory_id.value == "2"){
     	var optionArray = ["|","4|Jeans","8|Skirts,Shorts And Jumpsuits","9|Tight & Legging","5|Pants"];	
    }
    
    for(var option in optionArray){
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		product_type_id.options.add(newOption);
	}
}

function addProductSucces(message){
	var message= document.getElementById('message');
	if(message == "product_name")
		{
		  document.getElementById().style.visibility="visible";	
		}
	else{
		 document.getElementById().style.visibility="hidden";
	}
}


function showPassword() {
	
	  var passwordElement = document.getElementById("password");
	  if (passwordElement.type === "password") {
		  passwordElement.type = "text";
	  } else {
		  passwordElement.type = "password";
	  }
	}

//When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

$(document).ready(function(){
	   $('.button-left').click(function(){
	       $('.sidebar').toggleClass('fliph');
	   });
	     
	});


  function ConfirmDelete() {
	  var x = confirm("Are you sure you want to delete?");
   if (x == true)
	   window.location.href = this.getAttribute('href');
   else
	 return 0;
 }  
  