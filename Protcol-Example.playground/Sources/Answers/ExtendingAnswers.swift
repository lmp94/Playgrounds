import Foundation

// MARK: - Extending Protocols

protocol Bird: CustomStringConvertible {
  var name: String { get }
  var canFly: Bool { get }
}

extension CustomStringConvertible where Self: Bird {
  var description: String {
    canFly ? "I can fly" : "Guess I'll just sit here :["
  }
}
