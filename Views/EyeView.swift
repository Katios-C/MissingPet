import SwiftUI

struct EyeView: View {
    var body: some View {
        HStack {
            Spacer()
        Image("eye")
        }
            .padding(.trailing, 10)
    }
}

struct EyeView_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
    }
}
