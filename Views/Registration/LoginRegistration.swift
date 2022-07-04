import Foundation
import SwiftUI

class LoginRegistration: ObservableObject {
    // @Published var isEmailValid = false
    @Published var nameString = ""
    @Published var emailString = ""
    @Published var pathString = ""
    @Published var repeatPathString = ""
    @Published var loginAlert = "defaultMessage"
    @Published var isPathValidated = false
    @Published var passAndEmailMatch = false
    
    func emailValidated() -> Bool {
        emailString.isEmail()
    }
    
    func pathValidated() -> Bool {
        
        return pathString.isNotEmpty() && pathString.count != 0
    }
//
//    func checkLogin() -> String {
//        if emailValidated() && pathValidated() {
//            loginAlert = "login OK"
//        } else {
//            if !emailValidated() {
//                loginAlert = "Email не соотвествует"
//            }
//            if !pathValidated() {
//                loginAlert = "Пароль не должен быть пустым"
//            }
//        }
//        return loginAlert
//    }
    
    func isPassAndEmailMatch() -> Bool{
        if emailValidated() && pathValidated() {
            if emailString == "kate@gmail.com" && pathString == "111"
            {
                passAndEmailMatch = true
                print("MATCH")
            }
                }
        else {
            passAndEmailMatch = false
        }
        return passAndEmailMatch
    }
    
    func isNameStringEmpty() -> Bool{
        return nameString.isEmpty
    }
    
    func isPassesMatch() -> Bool {
        pathString == repeatPathString && pathString.isNotEmpty()
    }
}
