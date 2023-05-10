//
//  GreetingPresenter.swift
//  MVP Example
//
//  Created by Арсентий Халимовский on 10.05.2023.
//

import Foundation

// MARK: Presenter

// Public interface for Presenter
protocol GreetingPresenterProtocol: AnyObject {
    init(view: GreetingViewProtocol, person: Person)
    func showGreating()
}

// Our Presenter
// He should define our ViewController and instance of the Person Model
class GreetingPresenter: GreetingPresenterProtocol {
    // Presenter don't "own" ViewController
    unowned let view: GreetingViewProtocol
    // Presenter "owns" model
    let person : Person
    
    // Build Presenter with init
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    // pass to the View (owner) our greeting String value
    func showGreating() {
        let greeting = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greeting)
    }
    
    
}
