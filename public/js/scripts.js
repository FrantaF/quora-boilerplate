//Set nav links to active/not active
function changeActive(link){    
	//deactivate all links
	document.getElementById("nav-link1").classList.remove("active");
	document.getElementById("nav-link2").classList.remove("active");
	document.getElementById("nav-link3").classList.remove("active");
	//set item's class to active	
	link.className += " active";
}

// Show/Hide upload files seciton
function showUploadArea(){
   document.getElementById("upload-files-area").style.display = "block";
   document.getElementById("main-content").style.display = "none";  
}

function hideUploadArea(){
   document.getElementById("upload-files-area").style.display = "none";  
   document.getElementById("main-content").style.display = "block";  
}



// Drag and drop upload file
// + function($) {
//   'use strict';

    // UPLOAD CLASS DEFINITION
    // ======================

 //    var dropZone = document.getElementById('drop-zone');
 //    var uploadForm = document.getElementById('js-upload-form');

 //    var startUpload = function(files) {
 //       console.log(files)
 //    }

 //    uploadForm.addEventListener('submit', function(e) {
 //       var uploadFiles = document.getElementById('js-upload-files').files;
 //       e.preventDefault()

 //       startUpload(uploadFiles)
 //    })

 //    dropZone.ondrop = function(e) {
 //       e.preventDefault();
 //       this.className = 'upload-drop-zone';

 //       startUpload(e.dataTransfer.files)
 //    }

 //    dropZone.ondragover = function() {
 //       this.className = 'upload-drop-zone drop';
 //       return false;
 //    }

 //    dropZone.ondragleave = function() {
 //       this.className = 'upload-drop-zone';
 //       return false;
 //    }

 // }(jQuery);