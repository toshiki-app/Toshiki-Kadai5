import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!
    
    @IBAction private func calculate() {
        
        guard let number1 = Int(textField1.text ?? "") else {
            presentAlert(message: "割られる数を入力して下さい。")
            return
        }
        guard let number2 =  Int(textField2.text ?? "") else {
            presentAlert(message: "割る数を入力して下さい。")
            return
        }
        guard number2 != 0 else {
            presentAlert(message: "割る数には0を入力しないで下さい。")
            return
        }
        
        let result = Double(number1) / Double(number2)
        resultLabel.text = result.description
        
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "閉じる", style: .cancel))
        present(alert, animated: true)
    }
}
