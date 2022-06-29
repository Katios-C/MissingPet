import Foundation
import SwiftUI

class LoginRegistration: ObservableObject {
    // @Published var isEmailValid = false
    @Published var emailString = ""
    @Published var pathString = ""
    @Published var loginAlert = "defaultMessage"
    
    func emailValidated() -> Bool {
        emailString.isEmail()
    }
    
    func pathValidated() -> Bool {
        pathString.isPath() && pathString.count != 0
    }
    
    func checkLogin() -> String {
        if emailValidated() && pathValidated() {
            loginAlert = "login OK"
        } else {
            if !emailValidated() {
                loginAlert = "Email не соотвествует"
            }
            if !pathValidated() {
                loginAlert = "Пароль не должен быть пустым"
            }
        }
        return loginAlert
    }
}
