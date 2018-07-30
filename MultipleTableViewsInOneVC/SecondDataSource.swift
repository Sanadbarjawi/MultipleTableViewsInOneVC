//
//  SecondDataSource.swift
//  MultipleTableViewsInOneVC
//
//  Created by Sanad Barjawi on 7/30/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//
import Foundation
import UIKit
class SecondDataSouce: NSObject,UITableViewDataSource {
    
    var items: [String] = []

    func setData(items:[String]){
        self.items = items
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell") as! SecondTableViewCell
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
}
extension SecondDataSouce:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("table 2 data \(indexPath.row) selected")
    }
}
