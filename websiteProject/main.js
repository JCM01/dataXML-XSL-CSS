console.log("correcto");
document.getElementById('boton').onclick = traerDatos;

let pulsado = false;

function traerDatos(){
pulsado =!pulsado;
const ajax = new XMLHttpRequest();

ajax.open('GET', 'datos.json', true);

ajax.send();

ajax.onreadystatechange = function(){

if(this.readyState == 4 && this.status == 200){

  let d = JSON.parse(this.responseText);

  let tabla = document.getElementById('tabla');
  tabla.innerHTML="";

if (pulsado){
  tabla.innerHTML="<thead><tr><th>Nombre</th><th>Correo</th><th>Fecha</th><th>Ciudad</th></tr></thead>";
for(let i of d){
 
 tabla.innerHTML += `

              <tr>
               <td>${i.nombre}</td>
                <td>${i.correo}</td>
                <td>${i.fecha}</td>
                <td>${i.ciudad}</td>
              </tr>`

}

} else{

   tabla.innerHTML="";
}



}


}




}

const menu = document.querySelector(".menu");
const navContents = document.querySelector("#nav_contents");

menu.addEventListener("click", () => {
  navContents.classList.toggle("toggle");
});

const home = document.querySelector("#home_link");
home.addEventListener("click", () => {
  navContents.classList.toggle("toggle");
});

const about = document.querySelector("#about_link");
about.addEventListener("click", () => {
  navContents.classList.toggle("toggle");
});

const servicesLink = document.querySelector("#services_link");
servicesLink.addEventListener("click", () => {
  navContents.classList.toggle("toggle");
});

const projectsLink = document.querySelector("#projects_link");
projectsLink.addEventListener("click", () => {
  navContents.classList.toggle("toggle");
});

const contact = document.querySelector("#contact_link");
contact.addEventListener("click", () => {
  navContents.classList.toggle("toggle");
});

// Scroll to top button
window.addEventListener("scroll", () => {
  const scrollHeight = window.pageYOffset;
  const moveTopButton = document.querySelector(".move-top");
  if (scrollHeight > 420) {
    moveTopButton.style.opacity = 1;
    moveTopButton.style.top = "85vh";
    moveTopButton.style.right = "30px";
  } else {
    moveTopButton.style.opacity = 0;
    moveTopButton.style.top = "50vh";
    moveTopButton.style.right = "20vw";
  }
});
