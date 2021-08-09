import Foundation

// MARK: - Overriding Protocols

extension UnladenSwallow {
  var canFly: Bool {
    self != .unknown
  }
}

UnladenSwallow.unknown.canFly         // false
UnladenSwallow.african.canFly         // true
Penguin(name: "King Penguin").canFly  // false

