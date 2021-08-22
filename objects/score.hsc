when game.starts {
    setText(global.score, color: "Chalkboard")
    drawTrail(color: hsb(0, 0, 82), width: 9999) {
        setPosition(x: self.x, y: self.y)
    }
}

when message.showNewScore {
    setText(global.score, color: "Chalkboard")
}
