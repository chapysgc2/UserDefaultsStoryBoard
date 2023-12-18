//
//  ViewController.swift
//  UserDefaults
//
//  Created by Hazel Alain on 18/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var text3: UITextField!
    
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let myArray = UserDefaults.standard.stringArray(forKey: "array"){
            
            text1.text = myArray[0]
            text2.text = myArray[1]
            text3.text = myArray[2]

        }
    }

    @IBAction func guardar(_ sender: UIButton) {
        if text1.text = "" {
            alerta(titulo: "Error", mensaje: "Completa todos los campos")
        }
        
        else {
            array.append(text1.text ?? "")
            array.append(text2.text ?? "")
            array.append(text3.text ?? "")
            UserDefaults.standard.set(array, forKey: "array")
            print("funciona")
        }
        
    }
    
    
    //alerta para usar
    
    func alerta(titulo : String, mensaje : String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}

