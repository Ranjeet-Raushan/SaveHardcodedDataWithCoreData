//  ViewController.swift
//  SaveHardcodedDataWithCoreData
//  Created by Ranjeet Raushan on 02-Dec-2020.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import UIKit
class ViewController: UIViewController {
    var user:[User]? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        if CoreDataHandler.saveObject(fname: "Ranjeet", lname: "Raushan",email: "ranjeetraushan@gmail.com",password: "12345",confirmPassword: "12345",gender:"Male",phoneType: "Mobile",dob: "Nov 25 ,1991"){
            user = CoreDataHandler.fetchObject()
            for i in user! {
//  print("\(i.fname!),\(i.lname!),\(i.email!), \(i.password!),\(i.confirmPassword!),\(i.gender!),\(i.phoneType!),\(i.dob!)")
    print("\(i.fname!)")
    print("\(i.lname!)")
    print("\(i.email!)")
    print("\(i.password!)")
    print("\(i.confirmPassword!)")
    print("\(i.gender!)")
    print("\(i.phoneType!)")
    print("\(i.dob!)")
                
       }
    }
  }
}
