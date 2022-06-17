import SwiftUI

struct TextFieldLogin: View {
    @State var title: String
    @State var userName: String
    
    var body: some View {
        TextField(title, text: $userName)
            .padding()
            .background(Color.white)
            .cornerRadius(5.0)
            .padding(.vertical, 10)
            .shadow(radius: 3)
        
    }
}

