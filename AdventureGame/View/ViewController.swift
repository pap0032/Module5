import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var currentChoice: Choice?
    var previousChoice: Choice?
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adventureLogic.startAdventure()
        // Set the starting point
        currentChoice = adventureLogic.startChoice
        updateUI()
    }
    
    func updateUI() {
        titleLabel.layer.masksToBounds = true
        titleLabel.layer.cornerRadius = 10
        descriptionLabel.layer.masksToBounds = true
        descriptionLabel.layer.cornerRadius = 10
        
        if currentChoice?.success == false {
            titleLabel.text = "Choose Wisely!"
        }
        else {
            titleLabel.text = "Game Over!"
        }
        descriptionLabel.text = currentChoice?.description
        
        if let choices = currentChoice?.nextChoices, choices.count >= 2 {
            choice1Button.setTitle(choices[0].title, for: .normal)
            choice2Button.setTitle(choices[1].title, for: .normal)
            choice1Button.isHidden = false
            choice2Button.isHidden = false
        } else {
            choice1Button.isHidden = true
            choice2Button.isHidden = true
        }
    }
    
    @IBAction func choice1Tapped(_ sender: UIButton) {
        if let nextChoice = currentChoice?.nextChoices?[0] {
            previousChoice = currentChoice
            currentChoice = nextChoice
            updateUI()
        }
    }

    @IBAction func choice2Tapped(_ sender: UIButton) {
        if let nextChoice = currentChoice?.nextChoices?[1] {
            previousChoice = currentChoice
            currentChoice = nextChoice
            updateUI()
        }
    }
}


