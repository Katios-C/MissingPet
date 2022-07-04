import SwiftUI

struct LoginLaterView: View {
    var body: some View {
        HStack {
            Text(loginLater)
                .font(mulishRusFont)
            Image(rightArrow)
        }
    }
}

struct InLaterView_Previews: PreviewProvider {
    static var previews: some View {
        LoginLaterView()
    }
}
