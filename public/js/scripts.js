
function changeDivDisplay(sender){
   let id = document.getElementById(sender.id);
   if (id==="show-answers"){
      document.getElementById("show-answers").style.visibility = "visible"
      document.getElementById("show-answers").style.id = "hide-answers"

   } else{
      document.getElementById("hide-answers").style.visibility = "hidden"
      document.getElementById("hide-answers").style.id = "show-answers"
   }

}