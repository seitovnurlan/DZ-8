//  ViewController.swift   DZ#8
//
//  Created by Nurlan Seitov on 6/2/23.
//
//Домашнее задание №8.

//Сверстать и реализовать калькулятор в котором 2 текстовых поля для ввода чисел, 4 кнопки для операций и 1 label для вывода результата. Скелет для верстки в картинке №1.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number1TextField: UITextField!
    
    @IBOutlet weak var number2TextField: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func plusClick(_ sender: Any) {
        
        let number1 = Int(number1TextField.text!) ?? 0
        let number2 = Int(number2TextField.text!) ?? 0
        resultLabel.text = String(number1 + number2)
       
    }
    
    @IBAction func minusClick(_ sender: Any) {
        let number1 = Int(number1TextField.text!) ?? 0
        let number2 = Int(number2TextField.text!) ?? 0
        resultLabel.text = String(number1 - number2)
    }
    
    @IBAction func multiClick(_ sender: Any) {
        let number1 = Int(number1TextField.text!) ?? 0
        let number2 = Int(number2TextField.text!) ?? 0
        resultLabel.text = String(number1 * number2)
    }
    
    @IBAction func divisClick(_ sender: Any) {
        let number1 = Int(number1TextField.text!) ?? 0
        let number2 = Int(number2TextField.text!) ?? 1
        resultLabel.text = String(round(Double(number1 / number2)))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

