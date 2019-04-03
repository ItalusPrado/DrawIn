import Foundation
import UIKit

class TutorialMainViewModel {
    
    var image = [UIImage?]()
    var title = [String]()
    var color = [UIColor]()
    let count: Int
    
    init() {
        
        let t = TutorialRepository()
        let info = t.getAll()
        
        self.count = info.count
        for value in info{
            image.append(UIImage(named: value.image))
            title.append(value.title)
            color.append(Colors.init(colorName: value.color).color)
        }
    }
}
