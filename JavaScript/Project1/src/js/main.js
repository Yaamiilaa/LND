window.onload = () => {
    detectColor();
    randomColor();
}
function detectColor() {
    var buttons = document.querySelectorAll('#container div');
    var colors_index = ['0', '1', '2', '3', '4']
    for (var i = 0; i < buttons.length; i++) {
        var button = buttons[i];
        button.addEventListener("mouseover", function () {
            changeBgColor(this.id);

        })
    }
}

function changeBgColor(color) {
    document.getElementsByTagName("body")[0].style.backgroundColor = color;
}

function changeRandomColor(color) {
    document.getElementsByTagName('body')[0].style.backgroundColor = Math.floor(Math.random(colors_index))
}

