document.addEventListener("DOMContentLoaded", () => {
  const imgs = document.querySelectorAll(".barbearia-card img");

  imgs.forEach((img) => {
    img.addEventListener("click", () => {
      console.log("Imagem clicada");
      window.location.href = "barbearia.html";
    });
  });
});
