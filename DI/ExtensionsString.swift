import Foundation

extension String {

    func isEmail() -> Bool {
        let emailRegEx = "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]{2,}+\\.[a-zA-Z0-9-.]{2,}+$"
        return NSPredicate(format: "SELF MATCHES %@", emailRegEx).evaluate(with: self)
    }

    func isPath() -> Bool {
        let emailRegEx = "^[a-zA-Z0-9]{1,}$"
        return NSPredicate(format: "SELF MATCHES %@", emailRegEx).evaluate(with: self)
    }
}

// extension String {
//
//  var isValidEmail: Bool {
//    let name = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
//    let domain = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
//    let emailRegEx = name + "@" + domain + "[A-Za-z]{2,8}"
//    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
//    return emailPredicate.evaluate(with: self)
//  }
//
// }
