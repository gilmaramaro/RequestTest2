//
//  SecondViewController.swift
//  RequestTest2
//
//  Created by Gilmar Amaro on 18/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    var connectionScreenTwo: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreenTwo()
    }
    
    func setupScreenTwo() {
        let urlImage = URL(string: connectionScreenTwo?.imageURL ?? "")
        pizzaImage.sd_setImage(with: urlImage)
        myLabel1.text = "Preco Pequenca: R$\(connectionScreenTwo?.priceP ?? 0.0)"
        myLabel2.text = "Preco Media: R$\(connectionScreenTwo?.priceM ?? 0.0)"
        myLabel3.text = "Preco Grande: R$\(connectionScreenTwo?.priceG ?? 0.0)"
    }
    
    @IBAction func myButton(_ sender: Any) {
        if let screenTwo = storyboard?.instantiateViewController(withIdentifier: "screenThree") {
            self.navigationController?.pushViewController(screenTwo, animated: true)
        }
    }
}
