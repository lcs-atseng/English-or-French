//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here
var expectedLines = 0
while 1 == 1 {
    print("How many lines?")
    //test#1
    guard let givenInput = readLine() else {
        continue
    }
    //test#2
    guard let givenInteger = Int(givenInput) else {
         continue
    }
    //test#3
    if givenInteger < 1 || givenInteger > 1000 {
        continue
    }
    expectedLines = givenInteger
    break
}
// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
var englishLetters = 0
var frenchLetters = 0
print("Please enter the \(expectedLines) lines of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    for letters in givenLine {
        switch letters {
        case "t", "T" :
            englishLetters += 1
        case "s", "S" :
            frenchLetters += 1
        default:
            break
        }
    }
    
}

// OUTPUT
// Report results to the user here
if englishLetters > frenchLetters {
    print("This looks like English.")
} else {
    print("This looks like French.")
}

