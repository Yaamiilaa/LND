window.onload = () => {
    detectColor();
}

const colors_index = ['green', 'black', 'yellow', 'red', 'blue']
function detectColor() {
    var buttons = document.querySelectorAll('#container div');

    for (var i = 0; i < buttons.length; i++) {
        var button = buttons[i];
        button.addEventListener("mouseover", function () {
            changeRandomColor(this);

        })
    }
}

function changeBgColor(color) {
    document.getElementsByTagName("body")[0].style.backgroundColor = color;
}

function changeRandomColor(cell) {
    cell.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)]
}

