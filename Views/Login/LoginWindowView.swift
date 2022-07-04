import SwiftUI
import Resolver

struct LoginWindowView: View {
    @State var isPathNil = false
    @State var falseToggle = false
    @State var isButtonPressed = false
    @State var emailBorder = false
    @State var parolBorder = false
    @State var isPasswordHidden = true
    @State var isEmailWrong = false
    @State var isPassAndEmailMatch = false
    @ObservedObject var loginRegistration: LoginRegistration = Resolver.resolve()
    var body: some View {
        VStack {
           
            VStack(spacing: 20){
                VStack{
            TextFieldUnified(title: emailTitle, userInfo: $loginRegistration.emailString)
                        .border(isEmailWrong && emailBorder ? .red : .clear)
                        .onTapGesture {
                           emailBorder = false
                        }
                HStack {
                    Text(wrongEmailFormat)
                        .font(mulishFontSmall)
                        .foregroundColor(.red)
                        .opacity(isEmailWrong && emailBorder ? 10 : 0)
                    // .padding(.vertical, 15)
                    Spacer()
                }
                
                
               // .border(.yellow)
                }
                
            if isPasswordHidden {
                ZStack(alignment: .leading) {
                    SecureTextFieldUnified(title: passwordTitle, userInfo: $loginRegistration.pathString)
                        .border( isPathNil && parolBorder ? .red : .clear)
                        .onTapGesture {
                            isPathNil = false
                            parolBorder = false
                        }
                    EyeView()
                        .onTapGesture {
                            isPasswordHidden.toggle()
                            parolBorder = false
                        }
                }
            } else {
                ZStack(alignment: .leading) {
                    TextFieldUnified(title: passwordTitle, userInfo: $loginRegistration.pathString)
                        .border(.clear)
                        .onTapGesture {
                            isPathNil = false
                        }
                    EyeView()
                        .onTapGesture {
                        isPasswordHidden.toggle()
                    }
                }
            }
            }
            ZStack{
                HStack {
                    Text(passAndEmailNotMatchString)
                        .font(mulishFontSmall)
                        .foregroundColor(.red)
                        .opacity( isPassAndEmailMatch && !isPathNil && parolBorder ? 10 : 0)
                    // .padding(.vertical, 15)
                    Spacer()
                }
            
            HStack {
                Text(cannotBeBlank)
                    .font(mulishFontSmall)
                    .foregroundColor(.red)
                    .opacity( isPathNil && isButtonPressed ? 10 : 0)
                // .padding(.vertical, 15)
                Spacer()
            }
            }
            
            // .padding()
            Button("") {
                parolBorder = true
                emailBorder = true
                isButtonPressed = true
                isPathNil = loginRegistration.pathString.count == 0
                isEmailWrong = !loginRegistration.emailValidated()
                isPassAndEmailMatch = !loginRegistration.isPassAndEmailMatch()
                print(loginRegistration.pathString.count)
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
