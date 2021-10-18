//
//  ViewController.swift
//  AppMVPTest
//
//  Created by Ramazan on 17.10.2021.
//

import UIKit

class ViewController: UIViewController {

    private let presenter = Presenter()
    private var count = 0
    private var testData: [Crypto] = []
    weak private var viewOutputDelegate: ViewOutputDelegate?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBAction func buttonAction(_ sender: Any) {
        self.viewOutputDelegate?.getRandomCount()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: viewInputDelegate{
   
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if  testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
            
          
        }
        else {
            print("Sorry, no data")
        }
    }
    
    
}

