//
//  JobVC.swift
//  ManToMan
//
//  Created by Toan on 1/16/19.
//  Copyright © 2019 Thang Hoa. All rights reserved.
//

import UIKit

class JobVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPopoverPresentationControllerDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var hiddenTopView: UIView!
    @IBOutlet weak var popView: Popview!
//    @IBOutlet weak var salaryPopView: <#type#>!
//    @IBOutlet weak var jobPopView: <#type#>!
    @IBOutlet weak var placeFilterButton: VerticalButton!
    @IBOutlet weak var salaryFilterButton: VerticalButton!
    @IBOutlet weak var jobFilterButton: VerticalButton!
    
    var isTapped : Bool = false {
        didSet {}
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        setupApperanceVerticalButton()
//        centerVertically()
        popView.isHidden = true
        setAppearancePopView()
//        placeFilterButton.contentEdgeInsets.top = -20

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        setupApperanceVerticalButton()
        
    }
    
    func setAppearancePopView() {
//        popView.frame.origin.x = placeFilterButton.frame.origin.x
//        popView.frame.origin.y = placeFilterButton.frame.origin.y
        popView.topAnchor.constraint(equalTo: self.placeFilterButton.bottomAnchor, constant: 60)
        popView.frame.size = self.view.frame.size
        popView.frame.origin.y = self.view.frame.origin.y + 60
    }
    

//    func setupApperanceVerticalButton() {
//        //TODO: set up image for Button.
//        jobFilterButton.imageView?.image = #imageLiteral(resourceName: "ic_arrow_down")
//        salaryFilterButton.imageView?.image = #imageLiteral(resourceName: "ic_arrow_down")
//        placeFilterButton.imageView?.image = #imageLiteral(resourceName: "ic_arrow_down")
//
//        jobFilterButton.titleLabel?.text = "Job category"
//        salaryFilterButton.titleLabel?.text = "Salary"
//        placeFilterButton.titleLabel?.text = "Service"
//
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    //FIXME: Chua an duoc Image khi Select button ( fixed)
    // MARK: - ACTION
    @IBAction func serviceAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.contentVerticalAlignment = .center
        popView.isHidden = !popView.isHidden
        !popView.isHidden ? view.bringSubview(toFront: popView) : view.bringSubview(toFront: placeFilterButton)
        if sender.isSelected {
        sender.setImage(nil, for: .normal)
        
        sender.layoutIfNeeded()
        } else {
            sender.setImage(UIImage(named: "ic_arrow_down"), for: .normal)
        }
        
        
        
    }



}





