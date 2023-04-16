//
//  File.swift
//  
//
//  Created by Giorgio Giannotta on 15/04/23.
//

import Vapor

final class HeroController {
    let heroes: [Hero]

        init() {
            // Initialize your array of WordOfTheDay objects here
            self.heroes = [
                Hero(name: "Tony", lastName: "Stark", superheroName: "Iron Man", job: "Stark Industries", skills: ["Creativity", "Craziness"]),
                Hero(name: "Peter", lastName: "Parker", superheroName: "Spider-Man", job: "Freelance Photographer", skills: ["Agility", "Web-slinging"]),
                Hero(name: "Bruce", lastName: "Banner", superheroName: "The Hulk", job: "Scientist", skills: ["Superhuman strength", "Regeneration"]),
                Hero(name: "Steve", lastName: "Rogers", superheroName: "Captain America", job: "Avengers", skills: ["Leadership", "Strategy"]),
                Hero(name: "Thor", lastName: "Odinson", superheroName: "Thor", job: "Asgard", skills: ["Superhuman strength", "Weather control"]),
                Hero(name: "Natasha", lastName: "Romanoff", superheroName: "Black Widow", job: "S.H.I.E.L.D. Agent", skills: ["Espionage", "Martial arts"]),
                Hero(name: "Clint", lastName: "Barton", superheroName: "Hawkeye", job: "Avengers", skills: ["Archery", "Hand-to-hand combat"]),
                Hero(name: "Scott", lastName: "Lang", superheroName: "Ant-Man", job: "Former Thief", skills: ["Shrinking", "Insect control"]),
                Hero(name: "T'Challa", lastName: "Wakanda", superheroName: "Black Panther", job: "King of Wakanda", skills: ["Superhuman strength", "Vibranium suit"]),
                Hero(name: "Carol", lastName: "Danvers", superheroName: "Captain Marvel", job: "US Air Force Pilot", skills: ["Superhuman strength", "Energy projection"]),
                Hero(name: "Doctor", lastName: "Strange", superheroName: "Doctor Strange", job: "Sorcerer Supreme", skills: ["Mystical arts", "Time manipulation"]),
                Hero(name: "Vision", lastName: nil, superheroName: "Vision", job: "Avengers", skills: ["Density control", "Energy projection"]),
                Hero(name: "Wanda", lastName: "Maximoff", superheroName: "Scarlet Witch", job: "Avengers", skills: ["Reality manipulation", "Energy projection"]),
                Hero(name: "Sam", lastName: "Wilson", superheroName: "Falcon", job: "Avengers", skills: ["Flight", "Combat"]),
                Hero(name: "James", lastName: "Rhodes", superheroName: "War Machine", job: "US Air Force Colonel", skills: ["Weapons expert", "Armor"]),
                Hero(name: "Gamora", lastName: nil, superheroName: "Gamora", job: "Guardian of the Galaxy", skills: ["Assassin training", "Swordsmanship"]),
                Hero(name: "Drax", lastName: nil, superheroName: "Drax the Destroyer", job: "Guardian of the Galaxy", skills: ["Superhuman strength", "Durability"]),
                Hero(name: "Rocket", lastName: nil, superheroName: "Rocket Raccoon", job: "Guardian of the Galaxy", skills: ["Weapon expert", "Piloting"]),

            ]
        }

    func getHeroes(_ req: Request) throws -> [Hero] {
            return self.heroes
        }
}
