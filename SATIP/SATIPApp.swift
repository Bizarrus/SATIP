import SwiftUI
import SwiftData

struct Root: View {
    var body: some View {
        NavigationStack {
            TabView {
                TVView().tabItem {
                    Label("TV", systemImage: "tv")                }
                
                EPGView().tabItem {
                    Label("EPG", systemImage: "rectangle.grid.1x2")
                }
                
                SettingsView().tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
            }
        }
    }
}

@main
struct SATIPApp: App {
     var body: some Scene {
        WindowGroup {
            Root()
        }
    }
}

#Preview(body: {
    Root()
})
