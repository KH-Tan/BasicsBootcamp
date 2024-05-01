
import SwiftUI

struct UI02TextView: View {
    var body: some View {
        
        Text("Hello, World!".uppercased())
        Text("Hello, World!".lowercased())
        Text("Hello, World!".capitalized)
        
        Text("Hello, World!")
            .foregroundStyle(.orange)
            //.font(.title)
            //.fontWeight(.bold)
            .font(.system(size: 36, weight: .ultraLight, design: .serif))
            //.italic(false)
            //.strikethrough(true, color: .blue)
            //.underline(true, color: .red)
            //.kerning(85.0)
            //.multilineTextAlignment(.trailing)
            .frame(width: 350, height: 500, alignment: .center)
            .background(.gray)
            .minimumScaleFactor(0.8)
    }
}

#Preview {
    UI02TextView()
}
