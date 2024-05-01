
import SwiftUI

struct UI04ColorView: View {
    var body: some View {
        Text("Hello, World!")
        Divider()
        RoundedRectangle(cornerRadius: 50)
            .fill(
                //Color.primary
                //Color.secondary
                //Color.purple
                //Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))
                //Color(UIColor.systemTeal)
                //Color("CustomColor")
                Color.gray
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 20)
            .shadow(color: .gray.opacity(0.8), radius: 10, x: 20 , y:20)
    }
}

#Preview {
    UI04ColorView()
}
