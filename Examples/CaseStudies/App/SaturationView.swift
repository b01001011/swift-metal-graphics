import SwiftUI
import MetalGraphics

struct SaturationView: View {
    
    @State private var image = MTGImage(
        contentsOf: Bundle.main.url(forResource: "Lenna", withExtension: "png")!
    )
    
    @StateObject private var context = MTGContext()
    
    var body: some View {
    }
}

#Preview {
    SaturationView()
}
