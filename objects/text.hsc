import "./custom.hsc"

when game.isPlaying {
    invisibility(100)
    cloneSpawner()
}

when self.cloned {
    setPosition(x: random(from: 0, to: device.width), y: random(from: 0, to: device.width))
    startSound(name: "drip", wait: "0")
    if (random(from: 1, to: 100) > 90) {
        setImage(name: "Gorilla")
        self.type = 1
    } else {
        if (random(from: 0, to: 1) = 0) {
            setImage(name: "Circle")
        } else {
            setImage(name: "Square")
        }
        setColor(color: "Random")
    }
}

when self.tapped {
    if (self.type = 1) {
        startSound(name: "Roar", wait: 0)
        global.score += 50
        broadcast(message: "showNewScore")
    } else {
        startSound(name: "Pop", wait: 0)
        global.score += 10
    }
    destroySelf
}
