import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.5
    @State private var isPlaying: Bool = true
    
    var body: some View {
        ZStack {
            // Background Color
            Color.black.ignoresSafeArea()
            
            // Main content stack
            VStack(spacing: 20) {
                Image("sddefault")
                    .resizable()
                    .frame(width: 450, height: 325)
                    .offset(x: 0, y: 0)
                    .padding()
                    .shadow(radius: 10)
                VStack {
                    Text("Big Dick Randy")
                        .font(.title)
                        .bold()
                        .offset(x: -75, y: 0)
                    Text("Dig Bar")
                        .font(.title2)
                        .opacity(0.7)
                        .offset(x: -138, y: 0)
                }
                VStack {
                    Slider(value: $progress)
                        .accentColor(.white)

                    HStack {
                        Text("1:41")
                        Spacer()
                        Text("-2:67")
                    }
                    .font(.caption)
                    .opacity(0.7)
                }
                .padding(.horizontal, 67)

                
                HStack {
                    Button(action: {}) { Image(systemName: "shuffle").font(.subheadline) }
                        .padding(30)
                    Button(action: {}) { Image(systemName: "backward.fill").font(.title2) }
                    
                    Button(action: { isPlaying.toggle() }) {
                        Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                    }.padding(30)
                    
                    Button(action: {}) { Image(systemName: "forward.fill").font(.title2) }
                     Button(action: {}) { Image(systemName: "repeat").font(.subheadline) }.padding(30)
                }
                .offset (x: 0, y: -20)

            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
