//
//  MyTableViewCell.swift
//  RequestTest2
//
//  Created by Gilmar Amaro on 18/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var pizzaName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupCell(pizza: PizzaElement?) {
        let urlImage = URL(string: pizza?.imageURL ?? "")
        pizzaImage.sd_setImage(with: urlImage)
        pizzaName.text = pizza?.name ?? ""
    }
}
