import Cocoa

// Day 9, Checkpoint 5 – using closures!
// Take out even numbers... sort in ascending order... map to strings in the format "7 is a lucky number" ... print the resulting array one item per line.

let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]
//
// Stuck! How do I tell the first enclosure to accept an Array of [Int]?
// (I've managed to tell it to return an [Int], I think!?)
// If I put "_ inputNumbers: [Int]" inside the first parentheses, Swift complains elsewhere and I don't understand the error.
//
// Also, why is "first" not mentioned specifically in the doStuff {} closure itself below? This makes no sense to me.
//
func doStuff(first: () -> [Int], second: () -> Void, third: () -> Void) {
    print("Filtering numbers...")
    first()
    print("Sorting...")
    second()
    print("Creating strings...")
    third()
    print("Done. Result:")
}
doStuff {
    var filteredNumbers = [Int]()
    for x in 1..<luckyNumbers.count {
        if !luckyNumbers[x].isMultiple(of: 2) {
            // add it to our output array
            filteredNumbers.append(luckyNumbers[x])
        }
    }
    print(filteredNumbers) // OK so at least this bit's working
    return filteredNumbers
} second: {

} third: {

}
