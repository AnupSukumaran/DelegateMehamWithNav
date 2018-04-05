//
//  SendingVC.swift
//  DelegateMeham2
//
//  Created by Sukumar Anup Sukumaran on 19/06/17.
//  Copyright © 2017 Sukumar Anup Sukumaran. All rights reserved.
//

import UIKit

protocol DataSendDelegate {
    func userDidEnterData(data:String)
}

class SendingVC: UIViewController {
    
    var delegate:DataSendDelegate? = nil

    @IBOutlet weak var textFieldData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sendingDataBnt(_ sender: Any) {
        if delegate != nil{
            if textFieldData != nil{
                let data = textFieldData.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
        
    }

}
