//Lab1

import Foundation

let currentYear = 2025

var firstName: String = "Adil"
var lastName: String = "Boranbekov"
var birthYear: Int = 2006
var age: Int = currentYear - birthYear
var isStudent: Bool = true
var height: Double = 1.81

var nationality: String = "Kazakh"
var favoriteFood: String = "🍣 Sushi"
var favoriteEmoji: String = "😎"
var lovesCoding: Bool = true

var hobby: String = " Playing football "
var numberOfHobbies: Int = 4
var favoriteNumber: Int = 7
var isHobbyCreative: Bool = true

var secondHobby: String = "🏋️‍♂️ Fitness"
var thirdHobby: String = "📚 Reading"
var dreamVacation: String = "🌍 Brazil"




var lifeStory: String = """
My name is \(firstName) \(lastName) \(favoriteEmoji).
I am \(age) years old, born in \(birthYear).
I am currently a student: \(isStudent).
I am \(height)m tall and proud to be \(nationality).
My favorite food is \(favoriteFood).
I enjoy \(hobby), which is a creative hobby: \(isHobbyCreative).
I have \(numberOfHobbies) hobbies in total: \(hobby), \(secondHobby), and \(thirdHobby).
My favorite number is \(favoriteNumber), and I love to travel — my dream trip is to \(dreamVacation)!
"""


var futureGoals: String = "🚀 In the future, I want to become a professional iOS developer and build useful apps for people around the world."

lifeStory += "\n\n\(futureGoals)"



print(lifeStory) 

