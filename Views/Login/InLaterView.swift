

import SwiftUI

struct InLaterView: View {
    var body: some View {
        HStack{
            VStack{
            Text("Войти позже")
                .font(Font.custom("Poppins-Regular", size: 18))

            }
            Image("rightArrow")
        }
    }
}

struct InLaterView_Previews: PreviewProvider {
    static var previews: some View {
        InLaterView()
    }
}
