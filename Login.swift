import Foundation
import SwiftUI

struct Login {
    @State
    var loginData = [String : String]()
    
    
    func signUp(username: String, password: String) {
        self.loginData[username] = password
    }
    
    func login(username: String, password: String) -> Bool {
        for (index, keyValue) in loginData {
           print("Dictionary key \(index) - Dictionary value \(keyValue)")
           if (username == index && password == keyValue) {
               return true
           }
        }
        return false
        
    }
    
    
}


