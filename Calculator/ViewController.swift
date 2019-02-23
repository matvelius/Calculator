import UIKit

extension UITextView {
    
    func alignTextVerticallyInContainer() {
//        var topCorrect = (self.bounds.size.height - self.contentSize.height * self.zoomScale) / 2
//        topCorrect = topCorrect < 0.0 ? 0.0 : topCorrect;
        self.contentInset.top = 1000
//        print("hurray!")
    }
    
}

class Calculation {
    var number1: Double?
    var number2: Double?
    var operation: String?
    var result: Double?
}

class ViewController: UIViewController {
    
    var num1:String = ""
    var num2:String = ""
    var newCalculation = Calculation()
    
    // text view
    @IBOutlet var resultView: UITextView!
    
    // number buttons
    @IBAction func numButton(_ sender: UIButton) {
        
        if newCalculation.number1 == nil {
            // add new digit to num1
            num1.append(Character(sender.title(for: .normal)!))
            // add contents of num1 to text view
            resultView.text.append(num1)
        } else {
            // add new digit to num2
            num2.append(Character(sender.title(for: .normal)!))
            // add contents of num2 to text view
            resultView.text.append(num2)
        }
        
        
        
    }
    
    // operation buttons
    @IBAction func opButton(_ sender: UIButton) {
        // user selects operation
        if newCalculation.operation == nil {
            // set current Calculation's number1 to num1
            newCalculation.number1 = Double(num1)
            newCalculation.operation = sender.title(for: .normal)
            resultView.text.append(newCalculation.operation!)
    //        print(newCalculation.number1!)
        } else if sender.title(for: .normal) == "=" {
            // set current Calculation's number2 to num2
            newCalculation.number2 = Double(num2)
            addition()
            resultView.text.append("=")
            resultView.text.append(String(newCalculation.result!))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView.alignTextVerticallyInContainer()
        
        startNewCalculation()
        
    }
    
    func startNewCalculation() {
        var newCalculation = Calculation()
    }
    
    func addition() {
        newCalculation.result = newCalculation.number1! + newCalculation.number2!
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



