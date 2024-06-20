import UIKit

public struct User {
    public let name: String
    public let avatar: String?
    public init(name: String, avatar: String?) {
        self.name = name
        self.avatar = avatar
    }
}

final class UserBuilder {
    var name: String?
    var avatar: String?
    
    func build() -> User? {
        guard let name = name else { return nil }
        return User(name: name, avatar: avatar)
    }
}

extension User {
    static var mock: User {
        User(name: "Ishan Joshi", avatar: "👨🏻‍💻")
    }
}

// The most epic user base
extension User {
    static var 👽: User { User(name: "Alien", avatar: "👽") }
    static var 🐻: User { User(name: "Bhalu", avatar: "🐻") }
    static var 🐱: User { User(name: "Kitty", avatar: "🐱") }
    static var 🐔: User { User(name: "Chicken", avatar: "🐔") }
    static var 🐶: User { User(name: "Dogo", avatar: "🐶") }
    static var 🐲: User { User(name: "Dragon", avatar: "🐲") }
    static var 🦊: User { User(name: "Fox", avatar: "🦊") }
    static var 👻: User { User(name: "Bhoot", avatar: "👻") }
    static var 🐨: User { User(name: "Koala", avatar: "🐨") }
    static var 🦁: User { User(name: "Ser", avatar: "🦁") }
    static var 🐵: User { User(name: "Monkey", avatar: "🐵") }
    static var 🐼: User { User(name: "Panda", avatar: "🐼") }
    static var 🐷: User { User(name: "My Friend", avatar: "🐷") }
    static var 💩: User { User(name: "Poo", avatar: "💩") }
    static var 🐰: User { User(name: "Rabbit", avatar: "🐰") }
    static var 🤖: User { User(name: "Robot", avatar: "🤖") }
    static var 💀: User { User(name: "Skull", avatar: "💀") }
    static var 🐯: User { User(name: "Sheru", avatar: "🐯") }
    static var 🦖: User { User(name: "T-Rex", avatar: "🦖") }
    static var 🦄: User { User(name: "Unicorn", avatar: "🦄") }
    static var 🐗: User { User(name: "Boar", avatar: "🐗" ) }
    static var 🦒: User { User(name: "Giraffe", avatar: "🦒" ) }
    static var 🦉: User { User(name: "Owl", avatar: "🦉" ) }
    static var 🦈: User { User(name: "Shark", avatar: "🦈" ) }
    static var 🐙: User { User(name: "Octopus", avatar: "🐙" ) }
    static var 🐮: User { User(name: "Moo", avatar: "🐮" ) }
}
