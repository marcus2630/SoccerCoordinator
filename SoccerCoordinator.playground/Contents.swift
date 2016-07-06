//: Playground - noun: a place where people can play

import UIKit


//////////////////////////////////////
///////////// Data Model /////////////
//////////////////////////////////////


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
    ["name": "Herschel Krustofski", "height": "45", "experience": "YES",   "guardians": "Hyman and Rachel Krustofski"],
    
]

// Initializing team arrays of dictionary literals
var dragons: [[String: String]] = []
var sharks: [[String: String]] = []
var raptors: [[String: String]] = []


var teams = [dragons,sharks,raptors]

//////////////////////////////////////
////////// Player logic //////////////
//////////////////////////////////////

let playersPerTeam = players.count / teams.count


var experiencedIndex = 1
var unexperiencedIndex = 1

for player in players {
    if player["experience"] == "YES" {
        switch (experiencedIndex % playersPerTeam) {
        case 1: sharks.append(player)
        case 2: dragons.append(player)
        case 3: raptors.append(player)
        case 4: raptors.append(player)
        case 5: dragons.append(player)
        case 0: sharks.append(player)
        default: break
        }
    }
    if player["experience"] == "NO" {
        switch (unexperiencedIndex % playersPerTeam) {
        case 1: raptors.append(player)
        case 2: dragons.append(player)
        case 3: sharks.append(player)
        case 4: sharks.append(player)
        case 5: dragons.append(player)
        case 0: raptors.append(player)
        default: break
        }
    }
}




//////////////////////////////////////
////////// Letters logic /////////////
//////////////////////////////////////

// - for-in loop itereates through the team array and prints out values from each dicionary
for player in dragons {
    print("Dear \(player["guardians"]!), \(player["name"]!) will be playing for the Dragons. Date: March 17, 1pm")
}

for player in sharks {
    print("Dear \(player["guardians"]!), \(player["name"]!) will be playing for the Sharks. Date: March 17, 3pm")
}

for player in raptors {
    print("Dear \(player["guardians"]!), \(player["name"]!) will be playing for the Raptors. Date: March 17, 3pm")
}


var zyx = 0
while zyx < dragons.count {
    print("Dragons: \(dragons[zyx])")
    zyx += 1
}
var zyx3 = 0
while zyx3 < sharks.count {
    print("Sharks: \(sharks[zyx3])")
    zyx3 += 1
}

var zyx2 = 0
while zyx2 < raptors.count {
    print("Raptors: \(raptors[zyx2])")
    zyx2 += 1
}
