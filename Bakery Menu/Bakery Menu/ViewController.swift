

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
  
    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return chefsname.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "seg" {
            _ = segue.destination as! ViewController2

          }
        else if segue.identifier == "seg2" {
        _ = segue.destination as! ViewController3
      }
        else if segue.identifier == "seg3" {
               _ = segue.destination as! ViewController4
             }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.button.tag=indexPath.row
        cell.iimage.image = chefsimage[indexPath.row]
        cell.lable1.text=chefsname[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    @IBAction func bu(_ sender: UIButton) {
        if sender.tag == 0{
            
            performSegue(withIdentifier: "seg", sender: nil)
        }
        else if sender.tag == 1{
            performSegue(withIdentifier: "seg2", sender: nil)
        }
        else{
            performSegue(withIdentifier: "seg3", sender: nil)
            
        }
    }
 
    // menu items array
    
    
    // menu items description array
    let chefsname: [String] = ["Gordon Ramsay ","Jamie Oliver ", "Wolfgang Puck"]
    
    // items prices array
   
    
    // items images array
    let chefsimage = [
         UIImage(named: "gr"),
         UIImage(named: "jo"),
         UIImage(named: "wp"),
        
     ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        table.delegate=self
        table.dataSource=self
    }


}

