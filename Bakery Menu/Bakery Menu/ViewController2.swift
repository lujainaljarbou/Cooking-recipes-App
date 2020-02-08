

import UIKit

class ViewController2: UIViewController , UITableViewDelegate,UITableViewDataSource{
  
    @IBAction func fav(_ sender: Any) {
        
    }
    
    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return chefsname.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
             if segue.identifier == "seg4" {
               _ = segue.destination as! ViewController5_rec_

             }
           else if segue.identifier == "seg5" {
           _ = segue.destination as! vViewController6
         }
           else if segue.identifier == "seg6" {
                  _ = segue.destination as! ViewController7
                }
       }
    
    @IBAction func b(_ sender: UIButton) {
        
        if sender.tag == 0{
                  
                  performSegue(withIdentifier: "seg4", sender: nil)
              }
              else if sender.tag == 1{
                  performSegue(withIdentifier: "seg5", sender: nil)
              }
              else{
                  performSegue(withIdentifier: "seg6", sender: nil)
                  
              }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! TableViewCell2
        cell.iimage2.image = chefsimage[indexPath.row]
        cell.lable2.text=chefsname[indexPath.row]
        cell.bute.tag=indexPath.row
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    // menu items array
    
    
    // menu items description array
    let chefsname: [String] = ["CALIFORNIA ‘FRIED’ CHICKEN SANDWICH","CHEESECAKE IN A JAM-JAR", "FROZEN BERRY BREAKFAST BOWL"]
    
    // items prices array
   
    
    // items images array
    let chefsimage = [
         UIImage(named: "g1"),
         UIImage(named: "g2"),
         UIImage(named: "g3"),
        
     ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        table.delegate=self
        table.dataSource=self
    }


}

