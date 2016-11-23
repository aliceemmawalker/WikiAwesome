

import Foundation


//creating our own class and describing what is an "item"

class Item  {
   
    var imageName = ""
    var description = ""
    var moreInfo = ""
    
    init (imageName: String, description: String, moreInfo: String) {
    
        self.imageName = imageName
        self.description = description
        self.moreInfo = moreInfo
    }
}
