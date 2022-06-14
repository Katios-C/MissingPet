import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image(homeTopImage)
                .padding(.bottom, UIScreen.main.bounds.size.width / 18)
            LoginWindowView()
                .padding(.vertical)
            Spacer()
            LoginLaterView()
                .padding(.bottom, UIScreen.main.bounds.size.width / 10)
        }
        .padding()
        .padding(.top, 30)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
