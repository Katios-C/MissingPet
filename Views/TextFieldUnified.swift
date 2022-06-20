import SwiftUI

struct TextFieldUnified: View {
    @State var title: String
    @State var userInfo: String
    @Binding var isEmailWrong: Bool
    
    var body: some View {
        TextField(title, text: $userInfo)
            .padding()
            .background(Color.white)
            .overlay(
                isEmailWrong ?
                  RoundedRectangle(cornerRadius: 5)
                      .stroke(Color.red, lineWidth: 2)
                : nil)
            .cornerRadius(5.0)
            .padding(.vertical, 10)
            .shadow(radius: 3)
           
                    
    }
}

