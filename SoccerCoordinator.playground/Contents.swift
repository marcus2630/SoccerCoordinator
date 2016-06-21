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
    ["name": "Herschel Krustofski", "height": "45", "experience": "YES",   "guardians": "Hyman and Rachel Krustofski"]
]

// Initializing team arrays of dictionary literals
var dragons: [[String: String]] = []
var sharks: [[String: String]] = []
var raptors: [[String: String]] = []

// Make collection of teams
var teams = [dragons,sharks,raptors]






//////////////////////////////////////
////////// Player logic //////////////
//////////////////////////////////////

// Initialize player experience categories
var playersWithExperience: [[String: String]] = []
var playersWithoutExperience: [[String: String]] = []


// for in loop sorts the players
for player in players {
    
    if player["experience"] == "YES" {
        playersWithExperience.append(player) // append player dictionary to playersWithExperience
    } else {
        if player["experience"] == "NO" {
            playersWithoutExperience.append(player) // append player dictionary to playersWithoutExperience
        }
    }
}


//////// MATH /////////

// Calculate experienced players per team
var experiencedPlayersPerTeam = playersWithExperience.count / teams.count

// calculate total players per team
var unexperiencedPlayersPerTeam = playersWithoutExperience.count / teams.count


//////// Arranging the teams //////////


// dragons
var experiencedCounter = 0
var unexperiencedCounter = 0
for player in players {
    if (player["experience"] == "YES") && experiencedCounter <= experiencedPlayersPerTeam {
        switch player["height"]! {
            case "42": dragons.append(player)
            default: ()
        }
    experiencedCounter += 1
    }
    if player["experience"] == "NO" && unexperiencedCounter <= unexperiencedPlayersPerTeam {
        switch player["height"]! {
        case "43","41": dragons.append(player)
        default: ()
        }
    unexperiencedCounter += 1
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
    print("Dear \(player["guardians"]!), \(player["name"]!) will be playing for the Sharks. Date: March 17, 3pm")
}


var zyx = 0
while zyx < dragons.count {
    print(dragons[zyx])
    zyx += 1
}
