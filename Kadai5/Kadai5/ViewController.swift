import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!
    
    private let alert1 = UIAlertController(title: "課題5", message: "割られる数を入力して下さい。", preferredStyle: .alert)
    private let alert2 = UIAlertController(title: "課題5", message: "割る数を入力して下さい。", preferredStyle: .alert)
    private let alert3 = UIAlertController(title: "課題5", message: "割る数には0を入力しないで下さい。", preferredStyle: .alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alerts = [alert1, alert2, alert3]
        alerts.forEach { $0.addAction(UIAlertAction(title: "閉じる", style: .cancel)) }
    }
    
    @IBAction private func calculate() {
        
        guard let number1 = Int(textField1.text ?? "") else {
            present(alert1, animated: true)
            return
        }
        guard let number2 =  Int(textField2.text ?? "") else {
            present(alert2, animated: true)
            return
        }
        if number2 == 0 {
            present(alert3, animated: true)
            return
        }
        
        let result = Double(number1) / Double(number2)
        resultLabel.text = result.description
        
    }
    
}

