//
//  viewInputDelegate.swift
//  AppMVPTest
//
//  Created by Ramazan on 17.10.2021.
//

import Foundation

protocol viewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: ([Crypto]))
    func displayData(i: Int)
}
