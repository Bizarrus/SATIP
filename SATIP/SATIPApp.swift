import SwiftUI
import SwiftData

struct Root: View {
    @State private var selection = 3;
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selection){
                TVView().tabItem {
                    Label("TV", systemImage: "tv") 
                }.tag(1)
                
                EPGView().tabItem {
                    Label("EPG", systemImage: "rectangle.grid.1x2")
                }.tag(2)
                
                SettingsView().tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }.tag(1)
            }
        }
    }
}

@main
struct SATIPApp: App {
     var body: some Scene {
        WindowGroup {
            Root()
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview(body: {
    Root()
})
