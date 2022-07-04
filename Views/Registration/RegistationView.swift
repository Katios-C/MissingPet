import SwiftUI
import Resolver

struct RegistationView: View {
    @State var name = ""
    @State var email = ""
    @State var path = ""
    @State var repeatPath = ""
    @State var isName = false
    @State var isEmail = false
    @State var isPass = false
    @State var isMatch = false
    @ObservedObject var loginRegistration: LoginRegistration = Resolver.resolve()
    var body: some View {

        VStack {
            RegTextFields(nameString: $loginRegistration.nameString,
                          emailString: $loginRegistration.emailString,
                          pathString: $loginRegistration.pathString,
                          repeatPathString: $loginRegistration.repeatPathString,
                          isNameEmpty: $isName,
                          isEmailWrong: $isEmail,
                          isPassEmpty: $isPass,
                          isPassMatch: $isMatch)
            
            Button("") {
                isName = loginRegistration.isNameStringEmpty()
                isEmail = !loginRegistration.emailValidated()
                isPass = !loginRegistration.pathValidated()
                isMatch = !loginRegistration.isPassesMatch()
                print(isPass)
                print(loginRegistration.pathString)
               
            }
            .buttonStyle(LoginBlueButton(text: regNowTitle, imageTitle: powTitle))
            Spacer()
        }
        .padding()
    }
}

struct RegistationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistationView()
    }
}
