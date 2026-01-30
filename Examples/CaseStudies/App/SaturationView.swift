import SwiftUI
import MetalGraphics

struct SaturationView: View {
    
    @State private var image = MTGImage(
        contentsOf: Bundle.main.url(forResource: "Lenna", withExtension: "png")!
    )
    
    @StateObject private var context = MTGContext()
    
    private func filter(_ image: MTGImage) throws -> Bool {
        let filter = MTGFilter.colorControls()
        return true
    }
    
    var body: some View {
        Group {
            switch Result(catching: {
                try filter(image)
            }) {
            case .success:
                VStack {
                
                }
            case .failure:
                VStack {
                    
                }
            }
        }
    }
}

#Preview {
    SaturationView()
}
