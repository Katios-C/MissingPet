import SwiftUI
import Resolver

struct RegTextFields: View {

    @Binding var nameString: String
    @Binding var emailString: String
    @Binding var pathString: String
    @Binding var repeatPathString: String
    @Binding var isNameEmpty: Bool
    @Binding var isEmailWrong: Bool
    @Binding var isPassEmpty: Bool
    @Binding var isPassMatch: Bool
    @ObservedObject var loginRegistration: LoginRegistration = Resolver.resolve()
   // @State var falseToggle = false
    var body: some View {

        VStack() {
            VStack {
                TextFieldUnified(title: nameTitle, userInfo: $nameString)
                    .onTapGesture {
                        isNameEmpty = false
                    }
            HStack {
                Text(cannotBeBlank)
                    .font(mulishFontSmall)
                    .foregroundColor(.red)
                    .opacity(isNameEmpty ? 10 : 0)

                Spacer()
            }
            }
          //  .padding()
            VStack {
                TextFieldUnified(title: emailTitle, userInfo: $emailString)
                    .onTapGesture {
                        isEmailWrong = false
                    }
             
                HStack {
                    Text(emailString.isEmpty ? cannotBeBlank : wrongEmailFormat)
                        .font(mulishFontSmall)
                        .foregroundColor(.red)
                        .opacity(isEmailWrong ? 10 : 0)
                    // .padding(.vertical, 15)
                    Spacer()
                }
            }
         //   .padding()
            VStack {
            TextFieldUnified(title: passwordTitle, userInfo: $pathString)
                .overlay(
                    EyeView()
                )
                HStack {
                    Text(cannotBeBlank)
                        .font(mulishFontSmall)
                        .foregroundColor(.red)
                        .opacity(isPassEmpty ? 10 : 0)
                    // .padding(.vertical, 15)
                    Spacer()
                }
            }
          //  .padding()
            VStack {
            TextFieldUnified(title: repeatPathTitle, userInfo: $repeatPathString)
                .overlay(
                    EyeView()
                )
                .onTapGesture {
                    isPassMatch = false
                }
                HStack {
                    Text(cannotBeBlank)
                        .font(mulishFontSmall)
                        .foregroundColor(.red)
                        .opacity(isPassMatch ? 10 : 0)
                    // .padding(.vertical, 15)
                    Spacer()
                }
        }
           // .padding()
        }
       // .padding()
    }
}

//struct RegTextFields_Previews: PreviewProvider {
//    static var previews: some View {
//        RegTextFields(nameString: "", emailString: "", pathString: "", repeatPathString: "", isNameEmpty: false)
//    }
//}
