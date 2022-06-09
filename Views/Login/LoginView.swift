import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image(homeTopImage)
            LoginWindowView()
            Spacer()
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
