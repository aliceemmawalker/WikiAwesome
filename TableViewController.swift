

import UIKit

class TableViewController: UITableViewController {

    
    //BSD Students, this is where your array (or list) starts
    
    
    var itemArray:[Item] = [Item]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //BSD Students, this is where you input all your information for the app
        
        //when the page is loaded, the app puts in the following information
        

        let item1 = Item(imageName: "sphynx.jpg", description: "Sphynx", moreInfo: "I'm a hairless cat from Egypt" )
        let item2 = Item(imageName: "bengal.png", description: "Bengal", moreInfo: "I'm a big cat and covered in spots")
        let item3 = Item(imageName: "scottish.jpeg", description: "Scottish Fold", moreInfo: "I have huge eyes and tiny ears" )
        let item4 = Item(imageName: "persian.jpg", description: "Persian", moreInfo: "Fluffy and oh-so cute!!" )
        
        
        //below is what adds a new item to our array... a method called "append"
        
        itemArray.append(item1)
        itemArray.append(item2)
        itemArray.append(item3)
        itemArray.append(item4)
    
    }


    
    
    
    
    


    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return itemArray.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //we made a file named "Cell" now we are passing the information
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myCell

        let itemItem = itemArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: itemItem.imageName)
        cell.myLabel.text = itemItem.description
        
        return cell
        
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        //puts all the info into the page we have selected
        
        let itemSelected = itemArray[indexPath.row]
        let detailVC:DetailViewcontroller = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewcontroller
        
        detailVC.imageDetail = itemSelected.imageName
        detailVC.descriptionLabel = itemSelected.description
        detailVC.moreInfoDetail = itemSelected.moreInfo
        
        self.present(detailVC, animated: true, completion: nil)
    }
   

    
}
