import UIKit


// Normal constants
let cons1 : String = "Name"
let cons2 : Int = 22

// Upcasting
let cons3 = "Name" as Any
let cons4 = 22 as Any

let cons5 = [cons3, cons4, cons1]

let cons6 = cons5[0]   // cons6 type is any

let cons7 = cons5[2]   // cons7 also is any type

// Downcasting
// Downcasting can be done in two ways

// Force(Expicict) downcasting

let cons8 = cons5[0] as! String   // cons8 is a string now

// Safer(Implicit) downcasting

let cons9 = cons5[2] as? String  // cons9 is a optional string now

// Handling optional value
if let consValue = cons9 {
    print(consValue)
} else {
    print("Downcasting failed")
}

let cons10 = cons5[1] as? String  // cons9 is a optional string now

// Handling optional value
if let consValue = cons10 {
    print(consValue)
} else {
    print("Downcasting failed")
}

// If we try to downcast a value with some variable type and the original value type is something different then we will get nill value. just described in above example

// So downcasting may fail some times, but upcasting never fails.




// #### Type casting with objects

let button = UIButton()
let label = UILabel()
let view = UIView()

let components = [button, label, view]

for component in components {
    if let comp = component as? UIButton {
        comp.backgroundColor = UIColor.red
        print("Button color changed to red")
    }

    if let comp = component as? UILabel {
        comp.backgroundColor = UIColor.blue
        print("Label color changed to blue")
    }

    if let comp = component as? UIView {
        comp.backgroundColor = UIColor.black
        print("View color changed to black")
    }
    
    // Note the last if let will be executed every time, because every UIControl object(Buttons, lables, pickers etc) is inherited from UIView. So we can modify the above bloack to like this.
    
    if let comp = component as? UIButton {
        comp.backgroundColor = UIColor.red
        print("Button color changed to red")
    } else if let comp = component as? UILabel {
        comp.backgroundColor = UIColor.blue
        print("Label color changed to blue")
    } else {
        component.backgroundColor = UIColor.black
        print("View color changed to black")
    }
    
}


// The most often used case of downcasting in iOS is while instantiating VC of Storyboard

//let storyboard = UIStoryboard(name: "Main", bundle: nil)
//let vc = storyboard.instantiateViewController(withIdentifier: "FirstVC") as! FirstViewController  // FirstViewController is your VC


