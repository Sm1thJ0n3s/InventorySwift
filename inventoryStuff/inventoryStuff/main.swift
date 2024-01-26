//
//  main.swift
//  inventoryStuff
//
//  Created by StudentAM on 1/16/24.
//

import Foundation

// Items added in the user's cart
var addedMilk: Int = 0
var addedCereal: Int = 0
var addedCup: Int = 0
var addedSyrup: Int = 0
var addedWaffle: Int = 0
var itemsInCart: Int = addedMilk + addedCereal + addedCup + addedSyrup + addedWaffle

// Items and the amount of each items that are stocked
var milk: Int = 50
var cereal: Int = 50
var cup: Int = 50
var syrup: Int = 50
var waffle: Int = 50
var allStockedItems: Int = milk + cereal + cup + syrup + waffle

// Items that was sold
var soldMilk: Int = 0
var soldCereal: Int = 0
var soldCup: Int = 0
var soldSyrup: Int = 0
var soldWaffle: Int = 0
var soldItems = addedMilk + addedCereal + addedCup + addedSyrup + addedWaffle

// Price of each items
var totalPrice: Double = 0.0
let milkPrice: Double = 4.33
let cerealPrice: Double = 12.34
let cupPrice: Double = 0.72
let syrupPrice: Double = 33.75
let wafflePrice: Double = 7.69

var adminAttempts: Int = 5

print("Hello")
print("Welcome to Norfolk Breakfest Buy")
printValidInputs()

// This function is to show the actions of what the user can do depending on what they have entered
// This function also calls oanother function to handle with the user's inputs
func printValidInputs () {
    print("")
    print("How may I help you today? (Use number for selection:")
    print("")
    print("")
    print("1) Add To Cart")
    print("2) Remove From Cart")
    print("3) Item Availability")
    print("4) Admin Menu")
    print("5) Checkout")
    
    if let userInput = readLine(){
        handleUserOption(option: userInput)
    }

}

// This function is to handle the inputs enter which calls other functions depending on the user's inputs 
func handleUserOption(option: String){
    if option == "1" || option == "Add" || option == "Add To Cart" {
        addToCart(itemName: "None", amount: 0)
    } else if option == "2" || option == "Remove" || option == "Remove From Cart"{
        removeFromCart(itemName: "None", amount: 0)
    } else if option == "3" || option == "Availability" {
        itemAvailability()
    } else if option == "4" || option == "Admin Menu" {
        adminAccess(passcode:"None")
    } else if option == "5" || option == "Checkout"{
        checkout()
    }
}

// This function activates when the user inputs to activate this function
// User needs to input the item and quality they want to add to their cart
func addToCart (itemName: String, amount: Int) {
    if itemName == "None"{
        print("")
        print("What would you like to add?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("Add All Items") // Under Construction (Allows user to know: can add all items)
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                addToCart(itemName: userInput, amount: 0)
            } else if (userInput == "Add All Items" || userInput == "Add all items" || userInput == "add all items") || (userInput == "All Items"  || userInput == "All items" || userInput == "all items") {
                addToCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                addToCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Milk" || itemName == "milk") && milk == 0 {
        print("")
        print("Sorry but we are currently out of milk")
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                addToCart(itemName: userInput, amount: 0)
            } else if (userInput == "Add All Items" || userInput == "Add all items" || userInput == "add all items") || (userInput == "All Items"  || userInput == "All items" || userInput == "all items") {
                addToCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                addToCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Cereal" || itemName == "cereal") && cereal == 0 {
        print("")
        print("Sorry but we are currently out of cereal")
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                addToCart(itemName: userInput, amount: 0)
            } else if (userInput == "Add All Items" || userInput == "Add all items" || userInput == "add all items") || (userInput == "All Items"  || userInput == "All items" || userInput == "all items") {
                addToCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                addToCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Cup" || itemName == "cup") && cup == 0 {
        print("")
        print("Sorry but we are currently out of cup")
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                addToCart(itemName: userInput, amount: 0)
            } else if (userInput == "Add All Items" || userInput == "Add all items" || userInput == "add all items") || (userInput == "All Items"  || userInput == "All items" || userInput == "all items") {
                addToCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                addToCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Syrup" || itemName == "syrup") && syrup == 0 {
        print("")
        print("Sorry but we are currently out of syrup")
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                addToCart(itemName: userInput, amount: 0)
            } else if (userInput == "Add All Items" || userInput == "Add all items" || userInput == "add all items") || (userInput == "All Items"  || userInput == "All items" || userInput == "all items") {
                addToCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                addToCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Waffle" || itemName == "waffle") && waffle == 0 {
        print("")
        print("Sorry but we are currently out of waffle")
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                addToCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                addToCart(itemName: userInput, amount: 0)
            } else if (userInput == "Add All Items" || userInput == "Add all items" || userInput == "add all items") || (userInput == "All Items"  || userInput == "All items" || userInput == "all items") {
                addToCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                addToCart(itemName: "None", amount: 0)
            }
        }
    }  else if (itemName == "Add All Items" || itemName == "Add all items" || itemName == "add all items" || itemName == "All Items"  || itemName == "All items" || itemName == "all items") && allStockedItems == 0 {
        print("")
        print("Sorry but we are out of all out items right now. Please come back later")
        // User will be taken back to the Customer Main Menu options when all items are out of stock
        printValidInputs()
    }
    if amount == 0 {
        print("")
        print("Please enter the quantity (greater than 0)")
        if let userInput = readLine() {
            addToCart(itemName:itemName, amount:(userInput as NSString).integerValue)
        }
    } else {
        var quantity: Int = 0
        if itemName == "Milk" || itemName == "milk" {
            if amount > milk {
                quantity = milk
                addedMilk += quantity
                milk = 0
                totalPrice += Double(quantity) * milkPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                milk = milk - amount
                addedMilk += amount
                totalPrice += Double(amount) * milkPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Cereal" || itemName == "cereal" {
            if amount > cereal {
                quantity = cereal
                addedCereal += quantity
                cereal = 0
                totalPrice += Double(quantity) * cerealPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                cereal = cereal - amount
                addedCereal += amount
                totalPrice += Double(amount) * cerealPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Cup" || itemName == "cup" {
            if amount > cup {
                quantity = cup
                addedCup += quantity
                cup = 0
                totalPrice += Double(quantity) * cupPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                cup = cup - amount
                addedCup += amount
                totalPrice += Double(amount) * cupPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Syrup" || itemName == "syrup" {
            if amount > syrup {
                quantity = syrup
                addedSyrup += quantity
                syrup = 0
                totalPrice += Double(quantity) * syrupPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                syrup = syrup - amount
                addedSyrup += amount
                totalPrice += Double(amount) * syrupPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Waffle" || itemName == "waffle" {
            if amount > waffle {
                quantity = waffle
                addedWaffle += quantity
                waffle = 0
                totalPrice += Double(quantity) * wafflePrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                waffle = waffle - amount
                addedWaffle += amount
                totalPrice += Double(amount) * wafflePrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
            
        } else if itemName == "Add All Items" || itemName == "Add all items" || itemName == "add all items" || itemName == "All Items"  || itemName == "All items" || itemName == "all items" {
            quantity = amount
            var milkQuant: Int = 0
            var cerealQuant: Int = 0
            var cupQuant: Int = 0
            var syrupQuant: Int = 0
            var waffleQuant: Int = 0
            
            if amount > milk {
                milkQuant = milk
                milk = 0
                addedMilk += milkQuant
                totalPrice += Double(milkQuant) * milkPrice
                print("We can only add \(milkQuant) of milk since \(amount) cups is more than what we have")
            } else {
                milk = milk - amount
                addedMilk += amount
                totalPrice += Double(amount) * milkPrice
                print("We were able to add \(amount) of milk into your cart")
            }
            if amount > cereal {
                cerealQuant = cereal
                cereal = 0
                addedCereal += cerealQuant
                totalPrice += Double(cerealQuant) * cerealPrice
                print("We can only add \(cerealQuant) of cereals since \(amount) cups is more than what we have")
            } else {
                cereal = cereal - amount
                addedCereal += amount
                totalPrice += Double(amount) * cerealPrice
                print("We were able to add \(amount) of cereals into your cart")
            }
            if amount > cup {
                cupQuant = cup
                cup = 0
                addedCup += cupQuant
                totalPrice += Double(cupQuant) * cupPrice
                print("We can only add \(cupQuant) of cups since \(amount) cups is more than what we have")
            } else {
                cup = cup - amount
                addedCup += amount
                totalPrice += Double(amount) * cupPrice
                print("We were able to add \(amount) of milk into your cart")
            }
            if amount > syrup {
                syrupQuant = syrup
                syrup = 0
                addedSyrup += syrupQuant
                totalPrice += Double(syrupQuant) * syrupPrice
                print("We can only add \(syrupQuant) of syrup since \(amount) cups is more than what we have")
            } else {
                syrup = syrup - amount
                addedSyrup += amount
                totalPrice += Double(amount) * syrupPrice
                print("We were able to add \(amount) of milk into your cart")
            }
            if amount > waffle {
                waffleQuant = waffle
                waffle = 0
                addedWaffle += waffleQuant
                totalPrice += Double(waffleQuant) * wafflePrice
                print("We can only add \(waffleQuant) of waffles since \(amount) cups is more than what we have")
            } else {
                waffle = waffle - amount
                addedWaffle += amount
                totalPrice += Double(amount) * wafflePrice
                print("We were able to add \(amount) of milk into your cart")
            }
        }
    }
    itemsInCart = addedMilk + addedCereal + addedCup + addedSyrup + addedWaffle
    allStockedItems = milk + cereal + cup + syrup + waffle
    print("There are \(allStockedItems) items left that are currently stocked and your cart have \(itemsInCart) items.")
    print("Your current price is $\(String(format:"%.2f", totalPrice))")
    addAdminAttempts()
}


func removeFromCart (itemName: String, amount: Int) {
    if itemName == "None"{
        print("")
        print("What would you like to remove?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("Remove All Items") // Under Construction (Allows user to know: can add all items)
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if (userInput == "Remove All Items" || userInput == "Remove all items" || userInput == "remove all items") || (userInput == "Remove Items" || userInput == "Remove items" || userInput == "remove items"){
                removeFromCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                removeFromCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Milk" || itemName == "milk") && addedMilk == 0 {
        print("")
        print("You don't have milk in your cart")
        print("")
        print("What else would you like to remove?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("Remove All Items") // Under Construction (Allows user to know: can add all items)
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if (userInput == "Remove All Items" || userInput == "Remove all items" || userInput == "remove all items") || (userInput == "Remove Items" || userInput == "Remove items" || userInput == "remove items"){
                removeFromCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                removeFromCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Cereal" || itemName == "cereal") && addedCereal == 0 {
        print("")
        print("You don't have cereal in your cart")
        print("")
        print("What else would you like to remove?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("Remove All Items") // Under Construction (Allows user to know: can add all items)
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if (userInput == "Remove All Items" || userInput == "Remove all items" || userInput == "remove all items") || (userInput == "Remove Items" || userInput == "Remove items" || userInput == "remove items"){
                removeFromCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                removeFromCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Cup" || itemName == "cup") && addedCup == 0 {
        print("")
        print("You don't have cups in your cart")
        print("")
        print("What else would you like to remove?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("Remove All Items") // Under Construction (Allows user to know: can add all items)
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if (userInput == "Remove All Items" || userInput == "Remove all items" || userInput == "remove all items") || (userInput == "Remove Items" || userInput == "Remove items" || userInput == "remove items"){
                removeFromCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                removeFromCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Syrup" || itemName == "syrup") && addedSyrup == 0 {
        print("")
        print("You don't have syrup in your cart")
        print("")
        print("What else would you like to remove?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("Remove All Items") // Under Construction (Allows user to know: can add all items)
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if (userInput == "Remove All Items" || userInput == "Remove all items" || userInput == "remove all items") || (userInput == "Remove Items" || userInput == "Remove items" || userInput == "remove items"){
                removeFromCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                removeFromCart(itemName: "None", amount: 0)
            }
        }
    } else if (itemName == "Waffle" || itemName == "waffle") && addedWaffle == 0 {
        print("")
        print("You don't have waffles in your cart")
        print("")
        print("What else would you like to remove?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("Remove All Items") // Under Construction (Allows user to know: can add all items)
        
        if let userInput = readLine() {
            if userInput == "Milk" || userInput == "milk" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cereal" || userInput == "cereal" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Cup" || userInput == "cup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Syrup" || userInput == "syrup" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if userInput == "Waffle" || userInput == "waffle" {
                removeFromCart(itemName: userInput, amount: 0)
            } else if (userInput == "Remove All Items" || userInput == "Remove all items" || userInput == "remove all items") || (userInput == "Remove Items" || userInput == "Remove items" || userInput == "remove items"){
                removeFromCart(itemName: userInput, amount: 0)
            } else {
                print("Please enter the valid options")
                removeFromCart(itemName: "None", amount: 0)
            }
        }
    }  else if (itemName == "Remove All Items" || itemName == "Remove all items" || itemName == "remove all items" || itemName == "Remove Items" || itemName == "Remove items" || itemName == "remove items") && itemsInCart == 0 {
        print("")
        print("You haven't added any items in your cart. Please add an item if you want to perform this action")
        print("We will be having you to leave the remove section. This is due to not having any items in your cart.")
        printValidInputs()
    }
    print(itemName)
    if amount == 0 {
        print("")
        print("Please enter the quantity (greater than 0)")
        if let userInput = readLine() {
            removeFromCart(itemName:itemName, amount:(userInput as NSString).integerValue)
        }
    } else {
        print(amount)
        var quantity: Int = 0
        if itemName == "Milk" || itemName == "milk" {
            if amount > addedMilk {
                quantity = addedMilk
                milk += quantity
                addedMilk = 0
                totalPrice -= Double(quantity) * milkPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                addedMilk = addedMilk - amount
                milk += amount
                totalPrice -= Double(amount) * milkPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Cereal" || itemName == "cereal" {
            if amount > addedCereal {
                quantity = addedCereal
                cereal += quantity
                addedCereal = 0
                totalPrice -= Double(quantity) * cerealPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                addedCereal = addedCereal - amount
                cereal += amount
                totalPrice -= Double(amount) * cerealPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Cup" || itemName == "cup" {
            if amount > addedCup {
                quantity = addedCup
                cup += quantity
                addedCup = 0
                totalPrice -= Double(quantity) * cupPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                addedCup = addedCup - amount
                cup += amount
                totalPrice -= Double(amount) * cupPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Syrup" || itemName == "syrup" {
            if amount > addedSyrup {
                quantity = addedSyrup
                syrup += quantity
                addedSyrup = 0
                totalPrice -= Double(quantity) * syrupPrice
                print("We don't have \(amount) of \(itemName)s so we added \(quantity) to your cart")
            } else {
                addedSyrup = addedSyrup - amount
                syrup += amount
                totalPrice -= Double(amount) * syrupPrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Waffle" || itemName == "waffle" {
            if amount > addedWaffle {
                quantity = addedWaffle
                waffle += quantity
                addedWaffle = 0
                totalPrice -= Double(quantity) * wafflePrice
                print("We don't have \(amount) of \(itemName) so we added \(quantity) to your cart")
            } else {
                addedWaffle = addedWaffle - amount
                waffle += amount
                totalPrice -= Double(amount) * wafflePrice
                print("You have added \(amount) \(itemName)s to your cart ")
            }
        } else if itemName == "Remove All Items" || itemName == "Remove all items" || itemName == "remove all items" || itemName == "Remove Items" || itemName == "Remove items" || itemName == "remove items" {
            print("This option is currently under construction, try again during its Beta testings or fully developed")
            
            quantity = amount
            var milkQuant: Int = 0
            var cerealQuant: Int = 0
            var cupQuant: Int = 0
            var syrupQuant: Int = 0
            var waffleQuant: Int = 0
            
            if amount > addedMilk {
                milkQuant = addedMilk
                milk += milkQuant
                addedMilk = 0
                totalPrice -= Double(milkQuant) * milkPrice
                print("We can only remove \(milkQuant) of milk since \(amount) milk is more than what you have in your cart")
            } else {
                addedMilk -= amount
                milk += amount
                totalPrice -= Double(amount) * milkPrice
                print("We were able to remove \(amount) of milk from your cart")
            }
            if amount > addedCereal {
                cerealQuant = addedCereal
                cereal += cerealQuant
                addedCereal = 0
                totalPrice -= Double(cerealQuant) * cerealPrice
                print("We can only remove \(cerealQuant) of cereals since \(amount) cereals is more than what you have in your cart")
            } else {
                addedCereal -= amount
                cereal += amount
                totalPrice -= Double(amount) * cerealPrice
                print("We were able to remove \(amount) of cereals from your cart")
            }
            if amount > cup {
                cupQuant = addedCup
                cup += cupQuant
                addedCup = 0
                totalPrice -= Double(cupQuant) * cupPrice
                print("We can only remove \(cupQuant) of cups since \(amount) cups is more than what you have in your cart")
            } else {
                addedCup -= amount
                cup += amount
                totalPrice -= Double(amount) * cupPrice
                print("We were able to remove \(amount) of milk from your cart")
            }
            if amount > syrup {
                syrupQuant = addedSyrup
                syrup += syrupQuant
                addedSyrup = 0
                totalPrice -= Double(syrupQuant) * syrupPrice
                print("We can only remove \(syrupQuant) of syrup since \(amount) cups is more than what you have in your cart")
            } else {
                addedSyrup -= amount
                syrup += amount
                totalPrice -= Double(amount) * syrupPrice
                print("We were able to remove \(amount) of syrup from your cart")
            }
            if amount > waffle {
                waffleQuant = addedWaffle
                addedWaffle += waffleQuant
                addedWaffle = 0
                totalPrice -= Double(waffleQuant) * wafflePrice
                print("We can only remove \(waffleQuant) of waffles since \(amount) cups is more than what you have in your cart")
            } else {
                addedWaffle -= amount
                waffle += amount
                totalPrice -= Double(amount) * wafflePrice
                print("We were able to remove \(amount) of milk from your cart")
            }
        }
    }
    itemsInCart = addedMilk + addedCereal + addedCup + addedSyrup + addedWaffle
    allStockedItems = milk + cereal + cup + syrup + waffle
    print("There are \(itemsInCart) items left in your cart and \(allStockedItems) items that are in stock right now.")
    print("Your current price is $\(String(format:"%.2f", totalPrice))")
    addAdminAttempts()
}


func itemAvailability () {
    if milk > 0 {
        print("We have \(milk) items of milk left")
        print("")
    } else {
        print("We are currently not stocked of milk")
        print("")
    }
    if cereal > 0 {
        print("We have \(cereal) items or cereal left")
        print("")
    } else {
        print("We are currently not stocked of cereal")
        print("")
    }
    if cup > 0 {
        print("We have \(cup) items of cup left")
        print("")
    } else {
        print("We are currently not stocked of cup")
        print("")
    }
    if syrup > 0 {
        print("We have \(syrup) items of syrup left")
        print("")
    } else {
        print("We are currently not stocked of syrup")
        print("")
    }
    if waffle > 0 {
        print("We have \(waffle) items of waffle left")
        print("")
    } else {
        print("We are currently not stocked of waffle")
        print("")
    }
    addAdminAttempts()
}

// When the user wants to
func adminAccess (passcode:String) {
    if adminAttempts > 0 {
        if passcode == "None" {
            print("Please enter the passcode to prove you're an admin of the store:")
            if let userInput = readLine(){
                adminAccess(passcode: userInput)
            }
        } else if passcode == "6732" || passcode == "9854" {
            milk += addedMilk
            cereal += addedCereal
            cup += addedCup
            syrup += addedSyrup
            waffle += addedWaffle
            allStockedItems += itemsInCart
            clearCart()
            if passcode == "9854" {
                print("Welcome back Boss, what would you like to check today?")
            } else {
                print("Welcome to Norfolk Breafest Buy Admin Access")
            }
            print("")
            print("How would you like me to assist you admin?")
            print("")
            print("")
            print("1) Restock Inventory")
            print("2) Item Report")
            print("3) Item Stocks")
            print("4) Leave Admin Menu")
            
            if let userInput = readLine() {
                adminInputHandler(option: userInput)
            }
        } else {
            if adminAttempts > 0 {
                adminAttempts -= 1
                print("Wrong passcode. Please Try Again")
                print("")
            }
        }
    } else {
        print("You have unathorized access!")
        print("Please leave the admin menu.")
        printValidInputs()
    }
}

// When the user performs other actions, they will be given more attempts (up to 5 attempts)
func addAdminAttempts () {
    if adminAttempts < 5 {
        adminAttempts += 1
    }
    printValidInputs()
}

// Deals with the actions the user, who is now an admin to the system, to perform admin like actions and checkings
func adminInputHandler (option: String) {
    if option == "Restock" || option == "Restock Inventory" || option == "1" {
        itemRestock(option: "None")
    } else if option == "Report" || option == "Item Report" || option == "2" {
        itemReports()
    } else if option == "Stocks" || option == "Item Stocks" || option == "3" {
        itemStocks()
    } else if option == "Leave" || option == "Customer Menu" || option == "Leave Admin Menu" || option == "Leave admin menu" || option == "4" {
        print("Thank you for checking up on the store Admin")
        print("Please, have a wonderful rest of your day.")
        printValidInputs()
    } else {
        print("")
        print("Please input a valid option admin")
        adminAccess(passcode: "6732")
    }
}

func itemRestock (option: String) {
    if option == "None" {
        print("")
        print("What item would you like to restock on?")
        print("")
        print("")
        print("Milk")
        print("Cereal")
        print("Cup")
        print("Syrup")
        print("Waffle")
        print("All Items")
        
        if let userInput = readLine() {
            itemRestock(option: userInput)
        }
    }
    if (option == "Milk" || option == "milk") {
        if milk < 500 {
            milk += 50
            if milk > 500 {
                milk = 500
            }
            print("50 items of milk has been stocked. \(milk) items of milk are now in stock")
            adminAccess(passcode: "6732")
        } else {
            print("Sorry but this product has reach its limit. Please choose another item")
            
            if let userinput = readLine() {
                itemRestock(option: "None")
            }
        }
    } else if (option == "Cereal" || option == "cereal") {
        if cereal < 500 {
            cereal += 50
            if cereal > 500 {
                cereal = 500
            }
            print("50 items of cereal has been stocked. \(cereal) items of cereal are now in stock")
        } else {
            print("Sorry but this product has reach its limit. Please choose another item")
            
            if let userinput = readLine() {
                itemRestock(option: "None")
            }
        }
        
    } else if (option == "Cup" || option == "cup") {
        if cup < 500 {
            cup += 50
            if cup > 500 {
                cup = 500
            }
            print("50 items of cup has been stocked. \(cup) items of cup are now in stock")
        } else {
            print("Sorry but this product has reach its limit. Please choose another item")
            
            if let userinput = readLine() {
                itemRestock(option: "None")
            }
        }
        print("50 items of cup has been stocked. \(cup) items of cup are now in stock")
    } else if (option == "Syrup" || option == "syrup") {
        if syrup < 500 {
            syrup += 50
            if syrup > 500 {
                syrup = 500
            }
            print("50 items of syrup has been stocked. \(syrup) items of cersyrupeal are now in stock")
        } else {
            print("Sorry but this product has reach its limit. Please choose another item")
            
            if let userinput = readLine() {
                itemRestock(option: "None")
            }
        }
    } else if (option == "Waffle" || option == "waffle") {
        if waffle < 500 {
            waffle += 50
            if waffle > 500 {
                waffle = 500
            }
            print("50 items of waffle has been stocked. \(waffle) items of waffle are now in stock")
        } else {
            print("Sorry but this product has reach its limit. Please choose another item")
            
            if let userinput = readLine() {
                itemRestock(option: "None")
            }
        }
    } else if (option == "All Items" || option == "all items") {
        if milk < 500 {
            milk += 50
            if milk > 500 {
                milk = 500
            }
            print("Milk has been restocked. \(milk) items of milk are now in stock")
        } else {
            print("We are already stocked of milk.")
        }
        if cereal < 500 {
            cereal += 50
            if cereal > 500 {
                cereal = 500
            }
            print("Cereal has been restocked. \(cereal) items of cereal are now in stock")
        } else {
            print("We are already stocked of cereal.")
        }
        if cup < 500 {
            cup += 50
            if cup > 500 {
                cup = 500
            }
            print("Cups has been restocked. \(cup) items of cup are now in stock")
        } else {
            print("We are already stocked of cups.")
        }
        if syrup < 500 {
            syrup += 50
            if syrup > 500 {
                syrup = 500
            }
            print("Syrup has been restocks. \(syrup) items of syrup are now in stock")
        } else {
            print("We are already stocked of syrup.")
        }
        if waffle < 500 {
            waffle += 50
            if waffle > 500 {
                waffle = 500
            }
            print("Waffles has been restocked. \(waffle) items of waffle are now in stock")
        } else {
            print("We are already stocked of waffles.")
        }
    } else {
        print("Please input a valid item request admin")
        
        itemRestock(option: "None")
    }
    allStockedItems = milk + cereal + cup + syrup + waffle
    print("\(allStockedItems) items are now in stock.")
    adminAccess(passcode: "6732")
}

// Checks on how much items are sold and how much items are in stock currently
func itemReports () {
    print("")
    print("Items sold:")
    print("     Milk: \(soldMilk)")
    print("     Cereal: \(soldCereal)")
    print("     Cups: \(soldCup)")
    print("     Syrup: \(soldSyrup)")
    print("     Waffles: \(soldWaffle)")
    print("Total sold items are \(soldItems) items")
    print("")
    print("Items in stock:")
    print("     Milk: \(milk)")
    print("     Cereal: \(cereal)")
    print("     Cups: \(cup)")
    print("     Syrup: \(syrup)")
    print("     Waffles: \(waffle)")
    print("Total stocked items are \(allStockedItems) items")
    print("")
    adminAccess(passcode: "6732")
}

// Checks on the money made from each item depending on how much it is sold
func itemStocks () {
    print("")
    print("Milk sold prices: $\(String(format:"%.2f", Double(soldMilk) * milkPrice))")
    print("Cereal sold prices: $\(String(format:"%.2f", Double(soldCereal) * cerealPrice))")
    print("Cup sold prices: $\(String(format:"%.2f", Double(soldCup) * cupPrice))")
    print("Syrup sold prices: $\(String(format:"%.2f", Double(soldSyrup) * syrupPrice))")
    print("Waffle sold prices: $\(String(format:"%.2f", Double(soldWaffle) * wafflePrice))")
    print("Total sold prices: $\(String(format:"%.2f", soldItems))")
    print("")
    adminAccess(passcode: "6732")
}




func checkout () {
    print("Are you sure you got all the items you need for the day?")
    print("")
    print("Yes")
    print("No")
    if let userInput = readLine() {
        if userInput == "Yes" || userInput == "yes" {
            var grandTotalPrice: Double = totalPrice * 1.0925
            print("Your grand total is $\(String(format:"%.2f", grandTotalPrice)) with 9.25% taxes.")
            soldMilk += addedMilk
            soldCereal += addedCereal
            soldCup += addedCup
            soldSyrup += addedSyrup
            soldWaffle += addedWaffle
            soldItems = soldMilk + soldCereal + soldCup + soldSyrup + soldWaffle
            grandTotalPrice = 0
            clearCart()
            print("")
            print("Thank you for shopping at Norflok Breakfest Buy, please come again later!")
        } else if userInput == "No" || userInput == "no" {
            print("Alright then, taking you back to customer menu")
            printValidInputs()
        } else {
            print("Please select the only two options shown to you")
            checkout()
        }
    }
}

func clearCart() {
    addedMilk = 0
    addedCereal = 0
    addedCup = 0
    addedSyrup = 0
    addedWaffle = 0
    totalPrice = 0
}



/* 
 Helpful functions
 
 Array Functions: arrayname.removeAll()


 */


