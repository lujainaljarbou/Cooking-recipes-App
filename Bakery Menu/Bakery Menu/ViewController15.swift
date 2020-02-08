//
//  ViewController15.swift
//  Bakery Menu
//
//  Created by lujen aziz on 30/01/2020.
//  Copyright © 2020 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController15: UIViewController {
    
 @IBOutlet weak var text: UITextField!
    
    @IBAction func button(_ sender: Any) {
        if let url = URL(string: "https://tasty.co/search?q="+(text.text ?? "food")) {
                 if #available(iOS 10, *){
                     UIApplication.shared.open(url)
                 }else{
                     UIApplication.shared.openURL(url)
                 }

             }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
