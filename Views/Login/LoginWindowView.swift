import SwiftUI
import Resolver

struct LoginWindowView: View {
   // @State var username: String = ""
  //  @State var pathword: String = ""
    @State var isPathNil = false
    @State var falseToggle = false

    @ObservedObject var loginRegistration: LoginRegistration = Resolver.resolve()
    var body: some View {

        VStack {
            VStack {
                TextFieldUnified(title: emailTitle, userInfo: $loginRegistration.emailString, isEmailWrong: falseToggle)
                    .disableAutocorrection(true)
                    .font(mulishFont)
                    .colorScheme(.light)
                VStack(alignment: .leading) {
                    TextFieldUnified(title: passwordTitle, userInfo: $loginRegistration.pathString, isEmailWrong: loginRegistration.pathValidated())
                        .disableAutocorrection(true)
                        .font(mulishFont)
                        .colorScheme(.light)
                        
                        .overlay(EyeView())
                    Text(cannotBeBlank)
                        .font(mulishFontSmall)
                        .foregroundColor(.red)
                        .padding(.top, -12)
                        .opacity(isPathNil ? 10 : 0)
                }

            }
            .padding()

            Button("") {
                print(loginRegistration.checkLogin())
            }
            .buttonStyle(LoginBlueButton(text: loginHereTitle, imageTitle: powTitle))

            Text(forgetPasswordTitle)
                .font(mulishRusFont)
                .padding(.vertical, 30)
        }
        .padding()
    }
}
struct LoginWindowView_Previews: PreviewProvider {
    static var previews: some View {
        LoginWindowView()
    }
}
