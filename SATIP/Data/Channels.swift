import Foundation

class Channels: ObservableObject {
    @Published var list : [Channel] = []
    
    init() {
        let url = URL(string: "https://raw.githubusercontent.com/Bizarrus/SATIP/main/sample.m3u")
        var channels = [Channel]()
        
        if let url {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data, error == nil else {
                    fatalError(error!.localizedDescription)
                }
                
                let string = String(data: data, encoding: .utf8)
                if let string {
                    let lines = string.split(whereSeparator: \.isNewline)
                    
                    /**
                     
                     Header: #EXTM3U
                     
                     Lines:
                     Options: #EXTINF:
                     - <Seconds> (233s = 3:53)
                     - <Logo> (tvg-logo="<URL>")
                     <URL>
                     
                     #EXTINF:<Seconds> <Logo>, <Title>
                     */
                    
                    for line in lines {
                        print(line)
                        
                        channels.append(Channel(id: 1, name: "test"))
                    }
                    
                    OperationQueue.main.addOperation {
                        self.list = channels
                    }
                } else {
                    print("Bad String")
                }
            }
            
            task.resume()
        } else {
            print("Invalid URL")
        }
        
        
    }
}


