import Foundation

// MARK:- Using Structs w/ Protcols (Step 2)

/**
 
 Basic Setup: Phase 1
 
 Create two protocols:
 (1) Represents a type of object / sprite / etc w/ two properties.
 Requiremnets:
 - One property that is an idenfitier (name, species, etc)
 - One property that is action based
 i.e. Monkey w/ two properies: species(String), hasABannana(Bool)
 (2) Qunification of an action that is relevant to Protcol 1
 
 * Note: we will be extending these protocols so try to make it something in OOP you
 could see subclasses of. * *
 
 We will be deomstrating a crutical techinque that permits encapsulating of a functional concept w/out neededing a base classe
 */


//This code defines a new struct named FlappyBird that conforms to both the Bird and Flyable protocols. Its airspeedVelocity is a computed property comprising of flappyFrequency and flappyAmplitude. Being flappy, it returns true for canFly.
//
//Next, add the following two struct definitions to the bottom of the playground:
//
//A Penguin is a Bird, but it cannot fly. Good thing you didn’t take the inheritance approach and make all birds Flyable!
//
//Using protocols, you can define functional components and have any relevant object conform to them.
//
//You then declare SwiftBird, but in our game there are different versions of SwiftBird. The higher the version property is, the faster its airspeedVelocity as defined by the computed property.
//
//However, you can see there are redundancies. Every type of Bird has to declare whether it canFly or not — even though a notion of Flyable already exists in your system. It’s almost like you need a way to define default implementations of protocol methods. Well, that’s where protocol extensions come in.

struct FlappyBird: Bird, Flyable {
  let name: String
  let flappyAmplitude: Double
  let flappyFrequency: Double
  let canFly = true
  
  var airspeedVelocity: Double {
    3 * flappyFrequency * flappyAmplitude
  }
}
