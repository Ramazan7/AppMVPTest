//
//  Presenter.swift
//  AppMVPTest
//
//  Created by Ramazan on 17.10.2021.
//

import Foundation


class Presenter {
    weak private var viewInputDelegate: viewInputDelegate?
    var testData = Crypto.testData
    
    func setViewInputDelegate(viewInputDelegate: viewInputDelegate?){
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData(){
        self.viewInputDelegate?.setupData(with: self.testData)
        self.viewInputDelegate?.displayData(i: 0)
    }
    
    private func random(){
        let randomCount = Int.random(in: 0 ..< testData.count)
        self.viewInputDelegate?.displayData(i: randomCount)
    }
}


extension Presenter: ViewOutputDelegate {
    
    func getRandomCount(){
        random()
    }
    
    func getData() {
        self.loadTestData()
    }
    
    func saveData() {
        
    }
    
    
}
