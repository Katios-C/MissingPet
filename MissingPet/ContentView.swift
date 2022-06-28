import SwiftUI

struct ContentView: View {

    @State var isLoginPress = false
    var body: some View {
        VStack {
            Image(homeTopImage)
            ScrollingView(isLoginPressed: $isLoginPress)

            if isLoginPress == true {
                LoginWindowView()
            } else {
                RegistationView()
            }
            Spacer()
            LoginLaterView()
        }
        .padding(.vertical, 40)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
