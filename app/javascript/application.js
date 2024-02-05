// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// creer un texte avec le contenu et le lien pour coworkers


const coworkers = document.querySelector("#coworkers")

let hiddenText = document.querySelector("#hiddenText")

coworkers.addEventListener("click", (event) => {
  event.preventDefault()
  console.log("clic")
  hiddenText = document.getElementById("hiddenText");
  hiddenText.style.display = "block";
  hiddenText2 = document.getElementById("hiddenText2");
  hiddenText2.style.display = "none";
});


const rent = document.querySelector("#rent")

let hiddenText2 = document.querySelector("#hiddenText2")

rent.addEventListener("click", (event) => {
  event.preventDefault()
  console.log("clic")
  hiddenText = document.getElementById("hiddenText");
  hiddenText.style.display = "none";
  hiddenText2 = document.getElementById("hiddenText2");
  hiddenText2.style.display = "block";
});
