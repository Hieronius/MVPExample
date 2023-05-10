//
//  ViewController.swift
//  MVP Example
//
//  Created by Арсентий Халимовский on 10.05.2023.
//

import UIKit

// Protocol as public interface for our ViewController
protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

// MARK: "Passive View"
class GreetingViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    // our label from Storyboard
    @IBOutlet var greetingLabel: UILabel!
    
    // View or ViewCOntroller "own's" Presenter
    private var presenter: GreetingPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1. build instance of our Model
        let person = Person(name: "Tim", surname: "Cook")
        
        
        // 2. build instance of Presenter with properties
        presenter = GreetingPresenter(view: self, person: person)
        
    }
    
    // MARK: - IBActions
    
    // our button from Storyboard
    @IBAction func showGreetingPressed() {
        // 3. call method to change label 
        presenter.showGreating()
    }

}

// MARK: - Extensions

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        // pass actual greeting to the label
        greetingLabel.text = greeting
    }
    

}

