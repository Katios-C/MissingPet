import SwiftUI

struct RegTextFields: View {

    @State var nameString: String
    @State var emailString: String
    @State var pathString: String
    @State var repeatPathString: String

    @State var isEmailWrong = false
    @State var falseToggle = false
    var body: some View {

        VStack {
            TextFieldUnified(title: nameTitle, userInfo: $nameString, isEmailWrong: falseToggle)

            VStack {
                TextFieldUnified(title: emailTitle, userInfo: $emailString, isEmailWrong: isEmailWrong)
//                    .onTapGesture {
//                        isEmailWrong.toggle()
//                    }
                    .overlay(
                        HStack {
                            Text(cannotBeBlank)
                                .font(mulishFontSmall)
                                .foregroundColor(.red)
                                .padding(.top, -12)
                                .opacity(isEmailWrong ? 10 : 0)
                                .position(x: 100, y: 80)
                        })

            }
            TextFieldUnified(title: passwordTitle, userInfo: $pathString, isEmailWrong: falseToggle)
                .overlay(
                    EyeView()
                )
            TextFieldUnified(title: repeatPathTitle, userInfo: $repeatPathString, isEmailWrong: falseToggle)
                .overlay(
                    EyeView()
                )
        }
        .padding()
    }
}

struct RegTextFields_Previews: PreviewProvider {
    static var previews: some View {
        RegTextFields(nameString: "", emailString: "", pathString: "", repeatPathString: "")
    }
}
