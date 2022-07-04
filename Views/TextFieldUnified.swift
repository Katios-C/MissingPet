import SwiftUI

struct TextFieldUnified: View {
    @State var title: String
    @Binding var userInfo: String

    var body: some View {
        TextField(title, text: $userInfo)
            .disableAutocorrection(true)
            .autocapitalization(.none)
            .font(mulishFont)
            .colorScheme(.light)
            .padding()
            .background(Color.white)
            .cornerRadius(5.0)
           // .padding(.vertical, 10)
            .shadow(radius: 3)
            
    }
}

struct SecureTextFieldUnified: View {
    @State var title: String
    @Binding var userInfo: String
  //  @State var isEmailWrong: Bool

    var body: some View {
        SecureField(title, text: $userInfo)
            .disableAutocorrection(true)
            .autocapitalization(.none)
            .font(mulishFont)
            .colorScheme(.light)
            .padding()
            .background(Color.white)
            .cornerRadius(5.0)
           // .padding(.vertical, 10)
            .shadow(radius: 3)
           
    }
}



