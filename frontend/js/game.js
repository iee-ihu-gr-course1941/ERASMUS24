//# Game-specific logic (e.g., rendering the board)

function renderBoard(board) {
    const container = document.getElementById('game-container');
    container.innerHTML = ''; // Clear previous board
    board.forEach((row, rowIndex) => {
        const rowDiv = document.createElement('div');
        row.forEach((cell, colIndex) => {
            const cellDiv = document.createElement('div');
            cellDiv.className = 'cell';
            cellDiv.textContent = cell || '';
            cellDiv.addEventListener('click', () => makeMove(rowIndex, colIndex));
            rowDiv.appendChild(cellDiv);
        });
        container.appendChild(rowDiv);
    });
}
