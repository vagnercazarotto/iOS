
import UIKit


// The enum "Shape" represents a play or move
enum Shape: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    // This function randomly generates an opponent's play
    static func randomShape() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = Int(arc4random_uniform(3))
        return Shape(rawValue: shapes[randomChoice])!
    }
}
    
    
    
    
class SecondViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
        
        // MARK: -
        // MARK: Outlets
        
        @IBOutlet weak var resultImage: UIImageView!
        
        
        @IBOutlet weak var resultLabel: UILabel!
        // MARK: Shapes
        
        // When the ResultsViewController is initialized a userChoice is passed in and an opponent's play is generated.
        var userChoice: Shape!
        private let opponentChoice: Shape = Shape.randomShape()
        
        // MARK: -
        // MARK: View Lifecycle
        
        override func viewWillAppear(animated: Bool) {
            super.viewWillAppear(animated)
            displayResult()
        }
        
        // MARK: -
        // MARK: UI
        
        // The displayResult method generates the image and message for the results of a match.
        private func displayResult() {
            // Ideally, most of this would be handled by a model.
            var imageName: String
            var text: String
            let matchup = "\(userChoice.rawValue) vs. \(opponentChoice.rawValue)"
            
            // Why is an exclamation point necessary? :)
            switch (userChoice!, opponentChoice) {
            case let (user, opponent) where user == opponent:
                text = "\(matchup): it's a tie!"
                imageName = "tie"
            case (.Rock, .Scissors), (.Paper, .Rock), (.Scissors, .Paper):
                text = "You win with \(matchup)!"
                imageName = "\(userChoice.rawValue)-\(opponentChoice.rawValue)"
            default:
                text = "You lose with \(matchup) :(."
                imageName = "\(opponentChoice.rawValue)-\(userChoice.rawValue)"
            }
            
            imageName = imageName.lowercaseString
            resultImage.image = UIImage(named: imageName)
            resultLabel.text = text
        }
        
        @IBAction private func playAgain() {
            dismissViewControllerAnimated(true, completion: nil)
        }
        
}


