import Foundation



struct Penguin: Bird {
  let name: String
  let canFly = false
}

struct SwiftBird: Bird, Flyable {
  var name: String { "Swift \(version)" }
  let canFly = true
  let version: Double
  private var speedFactor = 1000.0
  
  init(version: Double) {
    self.version = version
  }
  
  // Swift is FASTER with each version!
  var airspeedVelocity: Double {
    version * speedFactor
  }
}
