//
//  ViewController5(rec).swift
//  Bakery Menu
//
//  Created by lujen aziz on 30/01/2020.
//  Copyright © 2020 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController5_rec_: UIViewController {

    
    @IBAction func button(_ sender: Any) {
        if let url = URL(string: "https://www.gordonramsay.com/gr/recipes/california-fried-chicken-sandwich/") {
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
