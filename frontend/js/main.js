document.addEventListener("DOMContentLoaded", () => {
  initializeBoard();

  const inputField = document.getElementById("move-input");
  const submitButton = document.getElementById("submit-move");

  submitButton.addEventListener("click", async () => {
      const column = parseInt(inputField.value, 10);

      const result = await makeMove(column);
      if (result) {
          alert(`Move submitted! Now it's ${result.status}`);
      } else {
          alert('Invalid move');
      }
  });
});
