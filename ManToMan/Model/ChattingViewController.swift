//
//  ChatViewController.swift
//  ManToMan
//
//  Created by admin on 3/5/19.
//  Copyright © 2019 Thang Hoa. All rights reserved.
//

import UIKit


class ChattingViewController: UIViewController {

    @IBOutlet weak var imageOperator: UIImageView!
    @IBOutlet weak var getDate: UILabel!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataDate()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //get data date assign for getDate
    func getDataDate(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        getDate.text = result
    }
    

}
