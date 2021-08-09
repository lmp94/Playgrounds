import Foundation

// MARK:- Basic Setup (Step 1)

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

protocol Kitten {
  var name: String { get }
  var canClimb: Bool { get }
}

protocol Climber {
  var maxHeight: Double { get }
}

// How To:
//        - cmd-shift-return to compile

/**
 Create two protocols:
    (1) Represents a type of object / sprite / etc w/ two properties.
        Requiremnets:
             - One property that is an idenfitier (name, species, etc)
             - One property that is action based
          i.e. Monkey w/ two properies: species(String), hasABannana(Bool)
     
 * Note: we will be extending these protocols so try to make it something in OOP you
         could see subclasses of. * *
 
 We will be deomstrating a crutical techinque that permits encapsulating of a functional concept w/out neededing a base classe
 */
