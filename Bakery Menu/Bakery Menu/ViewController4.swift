

import UIKit

class ViewController4: UIViewController , UITableViewDelegate,UITableViewDataSource{
  
    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return chefsname.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              if segue.identifier == "seg10" {
                _ = segue.destination as! ViewController11

              }
            else if segue.identifier == "seg11" {
            _ = segue.destination as! ViewController12
          }
            else if segue.identifier == "seg12" {
                   _ = segue.destination as! ViewController13
                 }
        }
    
    @IBAction func butten4(_ sender: UIButton) {
        if sender.tag == 0{
                         
                         performSegue(withIdentifier: "seg10", sender: nil)
                     }
                     else if sender.tag == 1{
                         performSegue(withIdentifier: "seg11", sender: nil)
                     }
                     else{
                         performSegue(withIdentifier: "seg12", sender: nil)
                         
                     }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell4") as! TableViewCell4
        cell.image4.image = chefsimage[indexPath.row]
        cell.lable4.text=chefsname[indexPath.row]
        cell.butten4.tag=indexPath.row
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    // menu items array
    
    
    // menu items description array
    let chefsname: [String] = ["Spring Rolls","Marinated Rack of Lamb with Honey-Mint Vinaigrette", "Savory Baked Carrot and Broccoli Rabe Terrine"]
    
    // items prices array
   
    
    // items images array
    let chefsimage = [
         UIImage(named: "spring"),
         UIImage(named: "wp1"),
         UIImage(named: "wp2"),
        
     ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        table.delegate=self
        table.dataSource=self
    }


}

