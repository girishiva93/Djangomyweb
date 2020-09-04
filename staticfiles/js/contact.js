document.addEventListener(
  "contextmenu",
  function (e) {
    e.preventDefault();
  },
  false
);

const form = document.getElementById("form");
const submit = document.getElementById("submit");

submit.addEventListener("submit", (e) => {
  e.preventDefault();
  checkInputs();
});
function checkInputs() {
  var fullName = document.getElementById("fname").value.trim();
  const email = document.getElementById("email").value.trim();
  const subject = document.getElementById("subject").value.trim();
  const number = document.getElementById("number").value.trim();
  const message = document.getElementById("message").value.trim();
  const error = document.getElementsByClassName("error");

  if (fullName == "" || fullName.length <= 4) {
    error[0].style.display = "block";
  } else {
    error[0].style.display = "none";
  }
  if (email == "" || email.length <= 9) {
    error[1].style.display = "block";
  } else {
    error[1].style.display = "none";
  }
  if (subject == "") {
    error[2].style.display = "block";
  } else {
    error[2].style.display = "none";
  }
  if (number == "" || number.length < 10) {
    error[3].style.display = "block";
  } else {
    error[3].style.display = "none";
  }
  if (message == "" || message.length <= 50) {
    error[4].style.display = "block";
  } else {
    error[4].style.display = "none";
  }
  alert("Thank You" + " " + fullName + " " + "For Keep in touch with me");
  document.getElementById("reset").reset();
}
