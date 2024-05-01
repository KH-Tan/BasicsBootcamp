// ------------------------------------------------------------------------------------
import Foundation

// Structs:
// - fast
// - stored in Stack (memory)
// - objects in Stack are Value types
// - Values types are copied & mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isActive: Bool?

    // Structs have an implicit init
    
    // not required, but can manually create the init() below
    //init(title: String, dateCreated: Date) {
    //    self.title = title
    //    self.dateCreated = dateCreated
    //}

    // required only for custom init()
    init(title: String, dateCreated: Date = .now, isActive: Bool?) {
        self.title = title
        self.dateCreated = dateCreated
        self.isActive = isActive
    }
}

let myString: String = "HOLA !"

let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .distantPast, isActive: true)

// this uses the custom init() - isActive can be nil because of Bool?
//                             - dateCreated is optional because of default .now
let myQuiz2: Quiz = Quiz(title: "Quiz X", isActive: nil)

let myQuiz3: Quiz = Quiz(title: "Quiz Y", isActive: true)



func OutputResults() -> String {
    return ("\(myQuiz.title) \(myQuiz.dateCreated)")
}


// ------------------------------------------------------------------------------------

// Immutable struct - all let constants, immutable
struct UserModel {
    let name: String
    let isMember: Bool
}

var user1: UserModel = UserModel(name: "Tanaka", isMember: true)

