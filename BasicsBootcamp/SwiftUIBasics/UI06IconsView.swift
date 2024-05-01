
import SwiftUI

struct UI06IconsView: View {
    var body: some View {
        Text("Hello, World!")
            .fontWidth(Font.Width(100))
        Divider()
        Image(systemName: "heart.fill")
            //.font(.largeTitle)
            //.font(.system(size: 172))
            .resizable()
            .aspectRatio(0.8, contentMode: .fill)
            //.scaledToFill()
            //.scaledToFit()
            //.padding(25)
            .foregroundStyle(.teal)
            .frame(width: 250, height: 250)
            .clipped()
            .background(.gray)
            
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.system(size: 172))
            
    }
}

#Preview {
    UI06IconsView()
}
