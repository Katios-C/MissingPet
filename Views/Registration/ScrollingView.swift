import SwiftUI

struct ScrollingView: View {
    @Binding var isLoginPressed: Bool
    
    var body: some View {
        
        VStack{
            HStack{
                Text(loginTitle)
                    .font(mulishBlackFont)
                    .padding(.horizontal, 25)
                    .onTapGesture {
                        isLoginPressed = true
                    }
                
                Spacer()
                Text(regestrationTitle)
                    .font(mulishBlackFont)
                    .padding(.horizontal, 25)
                    .onTapGesture {
                        isLoginPressed = false
                    }
            }
            
            ZStack{
                Image(vector)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack{
                    isLoginPressed ?
                    nil : Spacer()
                    Image(activeIndicator)
                    isLoginPressed ?
                    Spacer() : nil
                }
            }
        }
        .padding()
    }
}
