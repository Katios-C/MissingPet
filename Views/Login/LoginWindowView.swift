

import SwiftUI

struct LoginWindowView: View {
    @State var username: String = ""
    @State var  pathword: String = ""
    
    
    var body: some View {
        VStack{
            HStack(){
                Text("Вход")
                    .font(Font.custom("Poppins-Regular", size: 18))
                    .padding(.horizontal, UIScreen.main.bounds.size.width / 10)
              
                Text("Регистрация")
                    .font(Font.custom("Poppins-Regular", size: 18))
                    .padding(.horizontal, UIScreen.main.bounds.size.width / 10)
            }
      
            ZStack{
            Image("Vector")
                HStack{
        
            Image("Active_indicator")
                   Spacer()
                }
            }
            
        
            VStack{
                TextFieldLogin(title: "Email", userName: username)
                TextFieldLogin(title: "Пароль", userName: pathword)
            }
            .padding(.vertical)
            
            Image("fullButton")
                .padding()
            
            Text("Забыли пароль?")
                .font(Font.custom("Poppins-Regular", size: 18))
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
