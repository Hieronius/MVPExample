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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions
    
    // our button from Storyboard
    @IBAction func showGreetingPressed() {
        
    }

}

// MARK: - Extensions

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        // pass actual greeting to the label
        greetingLabel.text = greeting
    }
    

}

