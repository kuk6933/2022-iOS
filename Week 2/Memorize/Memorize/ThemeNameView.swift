
import SwiftUI

struct ThemeNameView: View {
    @EnvironmentObject var memorizeGame: MemorizeGame
    
    var body: some View {
        Text("\(memorizeGame.currentTheme.rawValue)")
            .font(.largeTitle)
            .foregroundColor(memorizeGame.themeColor)
    }
}

struct ThemeNameView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeNameView()
    }
}
