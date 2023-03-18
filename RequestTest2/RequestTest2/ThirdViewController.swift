//
//  ThirdViewController.swift
//  RequestTest2
//
//  Created by Gilmar Amaro on 18/03/23.
//

import UIKit
import Alamofire

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var myTableViewScreenThree: UITableView!
    
    var arrayPizza: [PizzaElement]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMyTableView()
        setupRequest()
    }
    
    func setupMyTableView() {
        self.myTableViewScreenThree.dataSource = self
        let UINIB = UINib(nibName: "MyTableViewCellTwo", bundle: nil)
        myTableViewScreenThree.register(UINIB, forCellReuseIdentifier: "CellTwo")
    }
    
    func setupRequest() {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            self.arrayPizza = pizza
            self.myTableViewScreenThree.reloadData()
        }
    }
}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cellThree = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath) as? MyTableViewCellTwo {
            cellThree.setupCellTwo(pizza: arrayPizza?[indexPath.row])
            return cellThree
        }
        return UITableViewCell()
    }
}
