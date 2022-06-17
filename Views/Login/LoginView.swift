import SwiftUI

struct LoginView: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                Image(homeTopImage)
                    .padding(.bottom, geometry.size.width / 18)
                LoginWindowView()
                    .padding(.vertical)
                Spacer()
                LoginLaterView()
                    .padding(.bottom, geometry.size.width / 18)
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
