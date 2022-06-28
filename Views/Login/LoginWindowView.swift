import SwiftUI

struct LoginWindowView: View {
    @State var username: String = ""
    @State var pathword: String = ""
    @State var isPathNil = false
    @State var falseToggle = false

    var body: some View {

        VStack {
            VStack {
                TextFieldUnified(title: emailTitle, userInfo: username, isEmailWrong: $falseToggle)
                    .font(mulishFont)
                    .colorScheme(.light)
                VStack(alignment: .leading) {
                    TextFieldUnified(title: passwordTitle, userInfo: pathword, isEmailWrong: $isPathNil)
                        .font(mulishFont)
                        .colorScheme(.light)
                        .onTapGesture {
                            isPathNil.toggle()
                        }
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
