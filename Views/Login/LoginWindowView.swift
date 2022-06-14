import SwiftUI

struct LoginWindowView: View {
    @State var username: String = ""
    @State var  pathword: String = ""
    
    
    var body: some View {
        VStack{
            HStack(){
                Text(loginTitle)
                    .font(mulishBlackFont)
                    .padding(.horizontal, UIScreen.main.bounds.size.width / 10)
                
                Text(regestrationTitle)
                    .font(mulishBlackFont)
                    .padding(.horizontal, UIScreen.main.bounds.size.width / 10)
            }
            
            ZStack{
                Image(vector)
                HStack{
                    
                    Image(activeIndicator)
                    Spacer()
                }
            }
            
            
            VStack{
                TextFieldLogin(title: emailTitle, userName: username)
                    .font(mulishFont)
                    .colorScheme(.light)
                
                
                TextFieldLogin(title: passwordTitle, userName: pathword)
                    .font(mulishFont)
                    .colorScheme(.light)
                
            }
            .padding(.vertical)
            
            Image(fullButtonTitle)
                .padding()
            
            Text(forgetPasswordTitle)
                .font(mulishRusFont)
                .padding(.vertical, UIScreen.main.bounds.size.width / 12)
            
        }
        .padding()
    }
}
struct LoginWindowView_Previews: PreviewProvider {
    static var previews: some View {
        LoginWindowView()
    }
}
