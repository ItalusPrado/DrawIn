import Foundation
import UIKit

class TutorialMainViewModel {
    
    var image = [UIImage?]()
    var title = [String]()
    var color = [UIColor]()
    let count: Int
    
    init() {
        
        let repository = TutorialRepository()
        let arrayInfo = repository.getAll()
        
        self.count = arrayInfo.count
        for info in arrayInfo{
            image.append(UIImage(named: info.image))
            title.append(info.title)
            color.append(UIColor(hex: info.color))//Colors.init(colorName: info.color).color)
        }
    }
}
