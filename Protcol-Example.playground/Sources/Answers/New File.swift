import Foundation

// 1
protocol Racer {
  var speed: Double { get }  // speed is the only thing racers care about
}

// 2
extension FlappyBird: Racer {
  var speed: Double {
    airspeedVelocity
  }
}

extension SwiftBird: Racer {
  var speed: Double {
    airspeedVelocity
  }
}

extension Penguin: Racer {
  var speed: Double {
    42  // full waddle speed
  }
}

extension UnladenSwallow: Racer {
  var speed: Double {
    canFly ? airspeedVelocity : 0.0
  }
}

extension Motorcycle: Racer {}

// 3
let racers: [Racer] =
  [UnladenSwallow.african,
   UnladenSwallow.european,
   UnladenSwallow.unknown,
   Penguin(name: "King Penguin"),
   SwiftBird(version: 5.1),
   FlappyBird(name: "Felipe", flappyAmplitude: 3.0, flappyFrequency: 20.0),
   Motorcycle(name: "Giacomo")]

Here’s what this does:

First, define the protocol Racer. This protocol defines anything that can be raced in your game.
Then, conform everything to Racer so that all our existing types can be raced. Some types, such as Motorcycle, conform trivially. Others, such as UnladenSwallow, need a bit more logic. Either way, when you’re done you have a bunch of conforming Racer types.
With all of the types at the starting line, you now create an Array<Racer> which holds an instance of each of the types you’ve created.
Build the playground to check everything compiles.


