//
//  viewOutputDelegate.swift
//  AppMVPTest
//
//  Created by Ramazan on 17.10.2021.
//

import Foundation


protocol ViewOutputDelegate: AnyObject {
    func getData()
    func saveData()
    func getRandomCount()
}
