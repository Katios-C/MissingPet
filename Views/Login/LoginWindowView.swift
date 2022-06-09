

import SwiftUI

struct LoginWindowView: View {
    @State var username: String = ""
    @State var isReg = false
    
    var body: some View {
        VStack{
            HStack(){
                Text("Вход")
                    .font(Font.custom("Mulish-Regular", size: 18))
                    .padding()
                    .padding(.horizontal, 15)
                Text("Регистрация")
                    .font(Font.custom("Mulish-Regular", size: 18))
                    .padding()
                    .padding(.horizontal, 15)
            }
      
            ZStack{
            Image("Vector")
                HStack{
        
            Image("Active_indicator")
                   Spacer()
                }
            }
            
        
            
        TextField("Email", text: $username)
                     .padding()
                     .background(lightGreyColor)
                     .cornerRadius(5.0)
                     .padding(5)
                     
        
        TextField("Пароль", text: $username)
                     .padding()
                     .background(lightGreyColor)
                     .cornerRadius(5.0)
                     .padding(5)
    }
        .padding()
}
}
struct LoginWindowView_Previews: PreviewProvider {
    static var previews: some View {
        LoginWindowView()
    }
}
