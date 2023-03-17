//
//  ViewController.swift
//  RequestTest2
//
//  Created by Gilmar Amaro on 17/03/23.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    var arrayPizza: [PizzaElement]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func setupRequest() {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            self.arrayPizza = pizza
        }
    }
}

