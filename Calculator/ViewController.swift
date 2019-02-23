import UIKit

class ViewController: UIViewController {
    var num1:String = ""
    @IBOutlet var resultView: UITextView!
    @IBAction func numButton(_ sender: UIButton) {
        num1.append(Character(sender.title(for: .normal)!))
        resultView.text = num1
    }
    
    @IBAction func opButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // comment
    // branch small change
    // another branch
    // BRANCH MERGE
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

