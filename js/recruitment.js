const form = document.querySelector(".myform form"),
continueBtn = form.querySelector(".button input"),
errorText = form.querySelector(".error-text");

form.onsubmit = (e)=>{
    e.preventDefault();
}

continueBtn.onclick = ()=>{
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "addRecruitment.php", true);
    xhr.onload = ()=>{
      if(xhr.readyState === XMLHttpRequest.DONE){
          if(xhr.status === 200){
              let data = xhr.response;
              if(data === "success"){
                document.getElementById("success-text").innerHTML = "<br>Data submitted successfully.";
              }else{
                document.getElementById("success-text").innerHTML = "<br>Error. Please try again.";
              }
          }
      }
    }
    let formData = new FormData(form);
    xhr.send(formData);
}