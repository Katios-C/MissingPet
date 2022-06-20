import SwiftUI

struct LoginBlueButton: ButtonStyle {
    var text: String
    var imageTitle: String
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(imageTitle)
            Text(text)
                .font(mulishRusFont)
        }
        .padding()
        .background(Color(red: 53.0/255.0, green: 170.0/255.0, blue: 255.0/255.0))
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}
