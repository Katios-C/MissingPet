import SwiftUI

struct RegistationView: View {
    @State var name = ""
    @State var email = ""
    @State var path = ""
    @State var repeatPath = ""

    var body: some View {

        VStack {
            RegTextFields(nameString: name, emailString: email, pathString: path, repeatPathString: repeatPath)
            Button("") {
            }
            .buttonStyle(LoginBlueButton(text: regNowTitle, imageTitle: powTitle))
            Spacer()
        }
        .padding()
    }
}

struct RegistationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistationView()
    }
}
