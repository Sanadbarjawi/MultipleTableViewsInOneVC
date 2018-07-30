//
//  ViewController.swift
//  MultipleTableViewsInOneVC
//
//  Created by Sanad Barjawi on 7/30/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTableView: UITableView!
    @IBOutlet weak var secondTableView: UITableView!
    
    var dataSource1: FirstDataSouce!
    var dataSource2: SecondDataSouce!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstTableView.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstTableViewCell")
        secondTableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
        prepareTableViews()
    }
    
    func prepareTableViews(){
        let items1 = ["a","b","c"]
        dataSource1 = FirstDataSouce()
        dataSource1.setData(items: items1)
        self.firstTableView.dataSource = dataSource1
        self.firstTableView.delegate = dataSource1

        let items2 = ["1","2","3"]
        dataSource2 = SecondDataSouce()
        dataSource2.setData(items: items2)
        self.secondTableView.dataSource = dataSource2
        self.secondTableView.delegate = dataSource2
    }
}






