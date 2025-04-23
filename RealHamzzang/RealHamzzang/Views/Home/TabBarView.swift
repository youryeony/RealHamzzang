import SwiftUI

struct TabBarView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView {
            HamzzangMainView()
                .tabItem {
                    Image(selection == 1 ? "hamshill" : "hamshillbk")
                }
                .tag(1)
            
            HamzzangListView()
                .tabItem {
                    Image(selection == 2 ? "hamface" : "hamfacebk")
                }
                .tag(2)
            
            MyProfileView()
                .tabItem {
                    Image(selection == 3 ? "mydata" : "mydatabk")
                }
                .tag(3)
        }
        .font(.custom("DungGeunMo", size: 20))
    }
    
}

#Preview {
    TabBarView()
}
