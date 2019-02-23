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
    
    var num1: String = ""
    var num2: String = ""
    var newCalculation = Calculation()
    
    // text view
    @IBOutlet var resultView: UITextView!
    
    // number buttons
    @IBAction func numButton(_ sender: UIButton) {
        
        if newCalculation.number1 == nil {
            // add new digit to num1
            num1.append(Character(sender.title(for: .normal)!))
//            print(num1)
            // add contents of num1 to text view
            resultView.text.append(Character(sender.title(for: .normal)!))
        } else {
            // add new digit to num2
            num2.append(Character(sender.title(for: .normal)!))
            // add contents of num2 to text view
            resultView.text.append(Character(sender.title(for: .normal)!))
        }
        
        
        
    }
    
    // operation buttons
    @IBAction func opButton(_ sender: UIButton) {
        // user selects operation and it's assigned to a variable
        let currentOperation = sender.title(for: .normal)
        print("newCalculation.operation is currently \(newCalculation.operation)")
        // if no operation was previous selected
        if newCalculation.operation == nil {
            // set current Calculation's number1 to num1
            print("num1 is currently \(num1)")
            newCalculation.number1 = Double(num1)
            print("setting number1 to \(newCalculation.number1)!")
            // set current operation to operation chosen by the user
            newCalculation.operation = currentOperation
            print("newCalculation.operation is now \(newCalculation.operation)")
//            print(newCalculation.operation)
            resultView.text.append(newCalculation.operation!)
    //        print(newCalculation.number1!)
        } else if currentOperation == "=" {
            // set current Calculation's number2 to num2
            newCalculation.number2 = Double(num2)
//            print(newCalculation.operation!)
            print("newCalculation.number1 is \(newCalculation.number1)")
            print("newCalculation.number2 is \(newCalculation.number2)")
            switch newCalculation.operation! {
            case "+":
                addition()
            case "-":
                subtraction()
            case "x":
                multiplication()
            case "÷":
                division()
            default:
                break
            }
            resultView.text.append("=")
            resultView.text.append(String(newCalculation.result!))
        } else if currentOperation == "Clear" {
            clear()
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
    func subtraction() {
        newCalculation.result = newCalculation.number1! - newCalculation.number2!
    }
    func multiplication() {
        newCalculation.result = newCalculation.number1! * newCalculation.number2!
    }
    func division() {
        newCalculation.result = newCalculation.number1! / newCalculation.number2!
//        print(newCalculation.result)
    }
    func clear() {
        newCalculation.result = nil
        newCalculation.number1 = nil
        newCalculation.number2 = nil
        newCalculation.operation = nil
        num1 = ""
        num2 = ""
        resultView.text = ""
        print("cleared! newCalculation.operation is now \(newCalculation.operation)")
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



