var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");


function myFunction(input,twoinput) {
  modal.style.display = "block";
  
  
}


let closed=true;

function message(element){
	if (closed===true){
		element.style.height="auto";
	}
	else {
		
	element.style.height="9em";
	}
	closed=!closed;
}



window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

