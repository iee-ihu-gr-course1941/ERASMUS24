function initializeBoard() {
    const boardContainer = document.getElementById("game-board");

    boardContainer.innerHTML = "";

    for (let column = 2; column <= 12; column++) {
        const columnDiv = document.createElement("div");
        columnDiv.className = "column";
        columnDiv.id = `column-${column}`;

        const columnLabel = document.createElement("div");
        columnLabel.className = "column-label";
        columnLabel.textContent = `Column ${column}`;
        columnDiv.appendChild(columnLabel);

        for (let space = 1; space <= column; space++) {
            const spaceDiv = document.createElement("div");
            spaceDiv.className = "space";
            spaceDiv.id = `column-${column}-space-${space}`;
            spaceDiv.textContent = space;
            columnDiv.appendChild(spaceDiv);
        }

        boardContainer.appendChild(columnDiv);
    }
}
