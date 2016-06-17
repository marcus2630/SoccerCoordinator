//: Playground - noun: a place where people can play

import UIKit


// create an array of dictionaries holding each players information

let players = [ // array
    ["name": "Joe Smith",           "height": "42", "experience": "YES",   "guardians": "Jim and Jan Smith"], // dictionaries
    ["name": "Jill Tanner",         "height": "36", "experience": "YES",   "guardians": "Clara Tanner"],
    ["name": "Bill Bon",            "height": "43", "experience": "YES",   "guardians": "Sara and Jenny Bon"],
    ["name": "Eva Gordon",          "height": "45", "experience": "NO",  "guardians": "Wendy and Mike Gordon"],
    ["name": "Matt Gill",           "height": "40", "experience": "NO",  "guardians": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein",         "height": "41", "experience": "NO",  "guardians": "Bill and Hillary Stein"],
    ["name": "Sammy Adams",         "height": "45", "experience": "NO",  "guardians": "Jeff Adams"],
    ["name": "Karl Saygan",         "height": "42", "experience": "YES",   "guardians": "Heather Bledsoe"],
    ["name": "Suzane Greenberg",    "height": "44", "experience": "YES",   "guardians": "Henrietta Dumas"],
    ["name": "Sal Dall",            "height": "41", "experience": "NO",  "guardians": "Gala Dali"],
    ["name": "Joe Kavalier",        "height": "39", "experience": "NO",  "guardians": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein",     "height": "44", "experience": "NO",  "guardians": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto",          "height": "41", "experience": "YES",   "guardians": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska",        "height": "47", "experience": "NO",  "guardians": "David and Jamie Alaska"],
    ["name": "Arnold Wills",        "height": "43", "experience": "NO",  "guardians": "Claire Willis"],
    ["name": "Phillip Helm",        "height": "44", "experience": "YES",   "guardians": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay",            "height": "42", "experience": "YES",   "guardians": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": "45", "experience": "YES",   "guardians": "Hyman and Rachel Krustofski"]
]

//
//      A struct could have been used instead, this way creating a player instance would be easier
//




// Setting up the teams

var dragons: [[String: String]] = []
var sharks: [[String: String]] = []
var raptors: [[String: String]] = []
var teams = [dragons,sharks,raptors]




// Sort players with experience and those without

var playersWithExperience: [[String: String]] = []
var playersWithoutExperience: [[String: String]] = []



// for in loop iterates if statements to check if the value of experience is set to YES or NO
// and then appends to coresponding array

for player in players { 
    
    if player["experience"] == "YES" {
        playersWithExperience.append(player)
    } else {
        if player["experience"] == "NO" {
            playersWithoutExperience.append(player)
        }
    }
}

var experiencedPlayersPerTeam = playersWithExperience.count / teams.count

var i = 0

while i < playersWithExperience.count {
    while dragons.count < experiencedPlayersPerTeam {
        dragons.append(playersWithExperience[i])
        
    }
    
    i += 1
}

print(dragons)










