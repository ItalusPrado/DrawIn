//
//  TutorialRepository.swift
//  DrawIn
//
//  Created by Italus Rodrigues do Prado on 03/04/19.
//  Copyright © 2019 Italus Rodrigues do Prado. All rights reserved.
//

import Foundation

class TutorialRepository{
    
    func getAll() -> [TutorialsMain] {
        var tutorials = [TutorialsMain]()
        
        if let dir = Bundle.main.path(forResource: "Tutorials", ofType: "plist"), let info = try? Data(contentsOf: URL(fileURLWithPath: dir)) {
            
            do {
                tutorials = try PropertyListDecoder().decode([TutorialsMain].self, from: info)
            }
            catch { print("Error: Bad data format for property list") }
        }
        
        return tutorials
    }
    
    func getFreeHandOptions() -> [TutorialsMain] {
        var options = [TutorialsMain]()
        
        if let dir = Bundle.main.path(forResource: "FreeHandOptions", ofType: "plist"), let info = try? Data(contentsOf: URL(fileURLWithPath: dir)) {
            
            do {
                options = try PropertyListDecoder().decode([TutorialsMain].self, from: info)
            }
            catch { print("Error: Bad data format for property list") }
        }
        
        return options
    }
}
