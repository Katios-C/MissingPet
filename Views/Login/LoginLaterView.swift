import SwiftUI

struct LoginLaterView: View {
    var body: some View {
        HStack {
            VStack {
                Text(loginLater)
                    .font(mulishRusFont)
            }
            Image(rightArrow)
        }
    }
}

struct InLaterView_Previews: PreviewProvider {
    static var previews: some View {
        LoginLaterView()
    }
}
