function kittenclicked(){
  alert("clicked on kitten!");
}

function mouseover (){
  alert("Please, Dont click on me!")
}

function dosomecalc (){
  var array = [4,5,2,7,1];
  alert(array);
  array.push(10);
  alert("Added 10: "+array);
  array.sort();
  alert("Sorted List: "+array);
}

function databasework (){
  var user = document.getElementById("name").value;
  var phone = document.getElementById("phone").value;
  var email = document.getElementById("email").value;
  if(user.length < 4 || !user.includes(" ")) window.alert("Please Enter Your Name!");
  else{
    var userid = "1689325";
    var name = "Harmandeep Mand";
    firebase.database().ref('data').child(user).set({
      name:user,
      email:email,
      phone:phone
    });
    document.getElementById("name").value = "";
    document.getElementById("phone").value = "";
    document.getElementById("email").value = "";
    window.alert("Done!");
  }
}

function regencharcode (){
  var chars = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ01234567890"
  for(var i = 0; i < chars.length; i++){
    var buildcode = "";
    for(var p = 0; p < 4; p++){
      var randomnum = Math.floor(Math.random() * chars.length);
      var char = chars[randomnum];
      buildcode += char;
    }
    firebase.database().ref('charCodes').child(chars[i]).set(buildcode);
  }
}
