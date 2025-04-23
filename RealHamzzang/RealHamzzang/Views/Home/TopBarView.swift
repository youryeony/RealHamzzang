import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Button {}
                label: {
                    Image("listicon")
                }
            Spacer()
            Button {}
                label: {
                    Image("noteicon")
                }
            Spacer()
            Button {}
                label: {
                    Image("calendaricon")
                }
            Spacer()
        }
    }
}

#Preview {
    TopBarView()
}
