//
//  Photo.swift
//  helloTest
//
//  Created by Thinh P. Dang on 11/3/22.
//

import Foundation

struct FruitCard: Identifiable{
    var id  = UUID()
    var name: String
}

var FruitData = [
    FruitCard(name: "raspberry"),
    FruitCard(name: "cherries"),
    FruitCard(name: "apple"),
    FruitCard(name: "grapes"),
    FruitCard(name: "orange"),
    FruitCard(name: "peach"),
    FruitCard(name: "pineapple"),
    FruitCard(name: "strawberry"),
    FruitCard(name: "watermelon"),
]

struct NumberCard: Identifiable{
    var id  = UUID()
    var name: String
}


var NumberData = [
    NumberCard(name: "one"),
    NumberCard(name: "two"),
    NumberCard(name: "three"),
    NumberCard(name: "four"),
    NumberCard(name: "five"),
    NumberCard(name: "six"),
    NumberCard(name: "seven"),
    NumberCard(name: "eight"),
    NumberCard(name: "nine"),
    NumberCard(name: "ten"),
    NumberCard(name: "twenty"),
    NumberCard(name: "thirty"),
    NumberCard(name: "forty"),
    NumberCard(name: "fifty"),
    NumberCard(name: "sixty"),
    NumberCard(name: "seventy"),
    NumberCard(name: "eighty"),
    NumberCard(name: "ninety"),
    NumberCard(name: "hundred"),
]


struct EmotionCard: Identifiable{
    var id  = UUID()
    var name: String
}


var EmotionData = [
    EmotionCard(name: "afraid"),
    EmotionCard(name: "angry"),
    EmotionCard(name: "ashamed"),
    EmotionCard(name: "confused"),
    EmotionCard(name: "exhausted"),
    EmotionCard(name: "frustrated"),
    EmotionCard(name: "happy"),
    EmotionCard(name: "inlove"),
    EmotionCard(name: "joyful"),
    EmotionCard(name: "quiet"),
    EmotionCard(name: "relaxed"),
    EmotionCard(name: "sad"),
    EmotionCard(name: "shocked"),
    EmotionCard(name: "smart"),
    EmotionCard(name: "smug"),
    EmotionCard(name: "sad"),
    EmotionCard(name: "stressed"),
    EmotionCard(name: "thankful"),
    
]

