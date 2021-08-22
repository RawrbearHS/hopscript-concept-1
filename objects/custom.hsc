custom cloneSpawner(name: "Clone spawner") {
    repeatForever {
        waitSeconds(random(from: 1.0, to: 3.0))
        createClone
    }
}
