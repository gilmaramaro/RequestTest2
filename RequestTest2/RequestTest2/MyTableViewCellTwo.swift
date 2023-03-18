//
//  MyTableViewCellTwo.swift
//  RequestTest2
//
//  Created by Gilmar Amaro on 18/03/23.
//

import UIKit

class MyTableViewCellTwo: UITableViewCell {

    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var ratingPizza: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupCellTwo(pizza: PizzaElement?) {
        let urlImage = URL(string: pizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        ratingPizza.text = "Nota Dos Clientes: \(pizza?.rating ?? 0)"
    }
}
