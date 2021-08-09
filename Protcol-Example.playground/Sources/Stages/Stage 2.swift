import Foundation


struct FlappyBird: Bird, Flyable {
  let name: String
  let flappyAmplitude: Double
  let flappyFrequency: Double
  let canFly = true
  
  var airspeedVelocity: Double {
    3 * flappyFrequency * flappyAmplitude
  }
}
