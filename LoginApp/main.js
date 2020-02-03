//document.body.style.backgroundColor = "#f3f3f3";
//document.body.style.backgroundImage = "url('webback.jpg')";
//window.location.href = "secondlink.html";
//var email = localStorage.getItem("email");
//var pass = localStorage.getItem("pass");
//link js file --- <script type="text/javascript" src="main.js"></script>

/*
FIREBASE SIGNOUT
firebase.auth().signOut().then(function() {
  // Sign-out successful.
  console.log('User Logged Out!');
}).catch(function(error) {
  // An error happened.
  console.log(error);
});
*/

/*
UPDATE USER DETAILS
var user = firebase.auth().currentUser;
user.updateProfile({
  displayName: "Updated User's Name",
  photoURL: "https://example.com/user/profile.jpg"
}).then(function() {
  // Update successful.
  console.log('User Profile Updated Successfully');
}).catch(function(error) {
  // An error happened.
});
*/

/*
UPDATE Email
var user = firebase.auth().currentUser;
user.updateEmail("user@example.com").then(function() {
  // Update successful.
}).catch(function(error) {
  // An error happened.
});
*/

/*
SEND VERIFICATION
var user = firebase.auth().currentUser;
user.sendEmailVerification().then(function() {
  // Email sent.
}).catch(function(error) {
  // An error happened.
});
*/

/*
CHANGE PASSWORD
var user = firebase.auth().currentUser;
var newPassword = getASecureRandomPassword();
user.updatePassword(newPassword).then(function() {
  // Update successful.
}).catch(function(error) {
  // An error happened.
});
*/

/*
DELETE MY ACCOUNT
var user = firebase.auth().currentUser;
user.delete().then(function() {
  // User deleted.
  console.log('User Deleted');
}).catch(function(error) {
  // An error happened.
});
*/

/*
var x = document.createElement("IMG");
  x.setAttribute("src", "img_pulpit.jpg");
  x.setAttribute("width", "404");
  x.setAttribute("height", "228");
  x.setAttribute("alt", "The Pulpit Rock");
  document.body.appendChild(x);
*/


/*
SR# 1-407937575 Brittney Jan 10 -- 11:10AM
*/
