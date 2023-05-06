//
//  AvengerController.swift
//  
//
//  Created by Giorgio Giannotta on 06/05/23.
//

import Vapor

final class AvengerController {
    let avengers: [Avenger]

        init() {
            // Initialize your array of WordOfTheDay objects here
            self.avengers = [
                Avenger(name: "Steve", lastName: "Rogers", superheroName: "Captain America", job: "Soldier", description: "Super soldier and patriotic hero", base64Image: "image"),
                Avenger(name: "Thor", lastName: "Odinson", superheroName: "Thor", job: "Prince of Asgard", description: "God of Thunder and prince of Asgard", base64Image: "image"),
                Avenger(name: "Bruce", lastName: "Banner", superheroName: "Hulk", job: "Scientist", description: "Gamma radiation experiment gone wrong", base64Image: "image"),
                Avenger(name: "Natasha", lastName: "Romanoff", superheroName: "Black Widow", job: "Spy", description: "Former Russian spy and assassin", base64Image: "image"),
                Avenger(name: "Clint", lastName: "Barton", superheroName: "Hawkeye", job: "Vigilante", description: "Expert marksman and former agent of S.H.I.E.L.D.", base64Image: "image"),
                Avenger(name: "Peter", lastName: "Parker", superheroName: "Spider-Man", job: "Student", description: "Superhero with spider-like abilities", base64Image: "image"),
                Avenger(name: "T'Challa", lastName: nil, superheroName: "Black Panther", job: "King of Wakanda", description: "Protector and ruler of the nation of Wakanda", base64Image: "image"),
                Avenger(name: "Scott", lastName: "Lang", superheroName: "Ant-Man", job: "Former thief", description: "Can shrink to the size of an ant", base64Image: "image"),
                Avenger(name: "Wanda", lastName: "Maximoff", superheroName: "Scarlet Witch", job: "Superhero", description: "Can manipulate reality and energy", base64Image: "image"),
                Avenger(name: "Vision", lastName: nil, superheroName: "Vision", job: "Synthetic being", description: "Has superhuman strength and can phase through objects", base64Image: "image"),
                Avenger(name: "Carol", lastName: "Danvers", superheroName: "Captain Marvel", job: "Air Force pilot", description: "Superhero with energy projection, flight, and superhuman strength", base64Image: "image"),
                Avenger(name: "Stephen", lastName: "Strange", superheroName: "Doctor Strange", job: "Neurosurgeon", description: "Master of the mystic arts and protector of the universe", base64Image: "image"),
                Avenger(name: "Peter", lastName: "Quill", superheroName: "Star-Lord", job: "Interstellar thief", description: "Half-human, half-alien superhero with enhanced strength and agility", base64Image: "image"),
                Avenger(name: "Gamora", lastName: nil, superheroName: "Gamora", job: "Assassin", description: "Adopted daughter of Thanos and skilled warrior", base64Image: "image"),
                Avenger(name: "Rocket", lastName: nil, superheroName: "Rocket Raccoon", job: "Bounty hunter", description: "Genetically engineered raccoon with advanced intellect and combat skills", base64Image: "image"),
                Avenger(name: "Groot", lastName: nil, superheroName: "Groot", job: "Tree", description: "Alien tree creature with regeneration and shapeshifting abilities", base64Image: "image"),
                Avenger(name: "Drax", lastName: nil, superheroName: "Drax the Destroyer", job: "Assassin", description: "Superhero with enhanced strength and durability, and a vendetta against Thanos", base64Image: "image"),
                Avenger(name: "Mantis", lastName: nil, superheroName: "Mantis", job: "Empath", description: "Alien empath with telepathic and empathic abilities", base64Image: "image"),
                Avenger(name: "Sam", lastName: "Wilson", superheroName: "Falcon", job: "Former air force pararescueman", description: "Superhero with mechanical wings and enhanced vision and hearing", base64Image: "image"),
                Avenger(name: "Bucky", lastName: "Barnes", superheroName: "Winter Soldier", job: "Soldier", description: "Superhero with enhanced strength, speed, and agility, and a bionic arm", base64Image: "image")
            ]
        }

    func getAvengers(_ req: Request) throws -> [Avenger] {
            return self.avengers
        }
}
