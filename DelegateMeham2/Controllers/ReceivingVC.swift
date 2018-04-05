//
//  ReceivingVC.swift
//  DelegateMeham2
//
//  Created by Sukumar Anup Sukumaran on 19/06/17.
//  Copyright © 2017 Sukumar Anup Sukumaran. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController,DataSendDelegate {

    @IBOutlet weak var recvLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func userDidEnterData(data: String) {
        recvLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSendingVC"
        {
            let sendingVC = segue.destination as! UINavigationController
            let newVC = sendingVC.viewControllers.first as! SendingVC
            
            // ReceivingVC(self) delegating tasks to SendingVC
            newVC.delegate = self
            
           
        }
    }
    
    

}
