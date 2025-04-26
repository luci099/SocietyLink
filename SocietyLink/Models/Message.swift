import Firebase

// MARK: - Message Model
struct Message: Identifiable, Equatable {
    let id: String
    let text: String
    let fullName: String
    let senderID: String
    let timestamp: Timestamp

    // Custom Equatable conformance
    static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.id == rhs.id
            && lhs.text == rhs.text
            && lhs.fullName == rhs.fullName
            && lhs.senderID == rhs.senderID
            // Compare Timestamp by its components
            && lhs.timestamp.seconds == rhs.timestamp.seconds
            && lhs.timestamp.nanoseconds == rhs.timestamp.nanoseconds
    }
}
