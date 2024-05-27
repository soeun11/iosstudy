import SwiftUI

struct ContentView :View {
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
    var body: some View{
        
        VStack(spacing: 20){
            Text("~~")
                .padding()
            Button("카카오 로그인",action:{
                kakaoAuthVM.handleKaKaoLogin()
            })
            Button("카카오 로그아웃",action: {
               
            })
            
        }
    }
}

struct ContentView_PreViews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
