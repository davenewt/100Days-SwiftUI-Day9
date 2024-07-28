import Cocoa

// Day 9, Checkpoint 5 – using closures!
// Take out even numbers... sort in ascending order... map to strings in the format "7 is a lucky number" ... print the resulting array one item per line.

// Example from Paul's videos:
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Who Knows?"
    }
}
let data = getUserData
let user = data(1989)
// print (user)

// Getting help on the forum because I really didn't understand at first! https://www.hackingwithswift.com/forums/100-days-of-swiftui/stuck-on-day-9-closures-beginner-guidance-sought/27662/27666

// First solution, one step at a time, using trailing closure syntax for the .filter function...
let allNumbers = [7,4,38,21,16,15,12,33,31,49]
// create a new array, leaving an item ($0) if it is NOT (!) a multiple of 2
// we are calling the 'filter' function using trailing closure syntax
let oddOnly = allNumbers.filter { !$0.isMultiple(of: 2) }
// create another new array with numbers sorted (default sort)
let sortedOdd = oddOnly.sorted()
// create another array that puts the items into separate strings
let stringifiedSorted = sortedOdd.map { "\($0) is a lucky number" }
// print out the strings, one per line
for number in stringifiedSorted {
    print(number)
}

// And a compressed version, with multiple steps in one line of code...
print("\nOne-line solution:")
let answers = allNumbers.filter{!$0.isMultiple(of: 2)}.sorted().map{"\($0) is a lucky number"}
for line in answers {
    print(line)
}
