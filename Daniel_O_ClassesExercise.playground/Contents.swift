import UIKit
//setting up a car features class

class carFeats{
//vars referencing each created enum
    var carColor: color
    var carWindows: window
    var carUpholst: upholstery
    var carSpecials: specials
    
    enum color: String, CaseIterable {
        case red = "Burgundy", orange = "Orange", purple = "Twilight", mint = "Mint", green = "Forest Green"
    }
    var allColors = color.allCases
    enum window: String, CaseIterable {
        case none = "No Tint", dyed = "Dyed", metalized = "Metalized", hybrid = "Hybrid", carbon = "Carbon", crystal = "Crystalline", ceramic = "Ceramic"
    }
    var allWindows = window.allCases
    enum upholstery: String, CaseIterable {
        case nylon = "Nylon", poly = "Polyester", vinyl = "Vinyl", fauxLeather = "Faux Leather", leather = "Leather"
    }
    var allUpholst = upholstery.allCases
    enum specials: String, CaseIterable {
        case hotSeats = "Heated Seating", navSystem = "Navigation System", bluetooth = "Bluetooth", blindSpotMonitor = "Blind Spot Monitoring", phoneCarPlay = "Apply CarPlay/Android Auto"
    }
    var allSpecials = specials.allCases
    //init so it works
    init(incColor: color, incWindows: window, incCarUpholst: upholstery, incCarSpecials: specials){
        self.carColor = incColor
        self.carWindows = incWindows
        self.carUpholst = incCarUpholst
        self.carSpecials = incCarSpecials
    }
//function to compile all inputted info into a string
    func carComplete(_ incColor: color, incWindows: window, incCarUpholst: upholstery, incCarSpecials: specials) -> String {
        return "You want a \(carColor.rawValue) colored car, with \(carWindows.rawValue) tints, \(carUpholst.rawValue) upholstery, and the \(carSpecials.rawValue) additional feature, correct?"
    }
}

//calling carFeats
var car = carFeats(incColor: carFeats.color.red, incWindows: carFeats.window.ceramic, incCarUpholst: carFeats.upholstery.fauxLeather, incCarSpecials: carFeats.specials.navSystem)
//calling the final function
var carBuilt = car.carComplete(carFeats.color.red, incWindows: carFeats.window.ceramic, incCarUpholst: carFeats.upholstery.fauxLeather, incCarSpecials: carFeats.specials.navSystem)
//printing fucntion resutls
print(carBuilt)

   
