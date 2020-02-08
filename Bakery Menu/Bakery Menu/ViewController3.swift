

import UIKit

class ViewController3: UIViewController , UITableViewDelegate,UITableViewDataSource{
  
    @IBOutlet weak var table: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return chefsname.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "seg7" {
            _ = segue.destination as! ViewController8

          }
        else if segue.identifier == "seg9" {
        _ = segue.destination as! ViewController9
      }
        else if segue.identifier == "seg8" {
               _ = segue.destination as! ViewController10
             }
    }
    
    @IBAction func buttent(_ sender: UIButton) {
        if sender.tag == 0{
                        
                        performSegue(withIdentifier: "seg7", sender: nil)
                    }
                    else if sender.tag == 1{
                        performSegue(withIdentifier: "seg9", sender: nil)
                    }
                    else{
                        performSegue(withIdentifier: "seg8", sender: nil)
                        
                    }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! TableViewCell3
        cell.imagecook.image = chefsimage[indexPath.row]
        cell.lablecook.text=chefsname[indexPath.row]
        cell.butten3.tag=indexPath.row
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    // menu items array
    
    
    // menu items description array
    let chefsname: [String] = ["Gordon Ramsay ","Herb tabbouleh with pomegranate & za’atar dressing  ", "Wolfgang Puck"]
    
    // items prices array
   
    
    // items images array
    let chefsimage = [
         UIImage(named: "jimbre"),
         UIImage(named: "jo1"),
        UIImage(named: "jo2")
        
     ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        table.delegate=self
        table.dataSource=self
    }


}

