import Foundation

enum Exercise: String {
    case emotions
    case drawing
    case affirmations
    case gratitude
}

extension Exercise: Identifiable {
    var id: String { rawValue }
}

extension Exercise {
    var title: String {
        if self == .drawing {
            return "Drawing"
        } else if self == .affirmations {
            return "Affirmations"
        } else {
            return "Unknown"
        }
    }

    var icon: String {
        if self == .drawing {
            return "🎨"
        } else if self == .affirmations {
            return "🧧"
        } else {
            return "❌"
        }
    }

    var shortDescription: String {
        if self == .drawing {
            return "How do you look when..."
        } else if self == .affirmations {
            return "Confidence and self-empowerment"
        } else {
            return "This activity is not currently available."
        }
    }

    var longDescription: String {
        if self == .drawing {
            return "Invite your child to imagine and then draw the emotion. It's best to depict the emotion on a face. For example, you could say, 'Draw how you look when you feel joy.' Completed images can be kept as a great way to monitor your child's emotional state (e.g., 'Choose a picture that represents how you feel right now')."
        } else if self == .affirmations {
            return "Encourage your child to select and read the sentences written on the cards, choosing the ones that resonate with them. Initiate a conversation by asking your child questions about their choices and what they might mean to them."
        } else {
            return "This activity is not currently available."
        }
    }

}
