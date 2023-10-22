import SwiftUI
import SwiftData

struct TVView: View {
    @StateObject var channels = Channels()
    
        //Text("You do not have any TV Channels set at the moment.")
    var body: some View {
        List(channels.list) { channel in
            Text(channel.name)
        }
    }
}

#Preview {
    TVView()
}
