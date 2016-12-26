//
//  ViewController.swift
//  StubsTest
//
//  Created by Sami Maaref on 26/12/2016.
//  Copyright © 2016 Sami Maaref. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let url = URL(string: "https://my-renault-api-server.cfapps.io/api/v1/users/67/login")
    let params = ["email": "test" , "password": "to"]

    Alamofire
      .request(url!, method: .post, parameters: params, encoding: JSONEncoding.default)
      .responseString { response in

        print("1/=== \(response.result)")
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

