import SwiftUI
import MetalGraphics

struct SaturationView: View {
    
    @State private var image = MTGImage(
        contentsOf: Bundle.main.url(forResource: "Lenna", withExtension: "png")!
    )!
    
    @StateObject private var context = MTGContext()
    
    private func filter(_ image: MTGImage) throws -> CGImage? {
        let filter = MTGFilter.colorControls()
        filter.inputImage = image
        filter.saturation = 1
        
        guard let outputImage = filter.outputImage else {
            throw NSError(domain: "Filter", code: 0, userInfo: [NSLocalizedDescriptionKey: "Output is nil"])
        }

        guard let cgImage = context.createCGImage(outputImage, from: .zero) else {
            throw NSError(domain: "Filter", code: 1, userInfo: [NSLocalizedDescriptionKey: "Failed to create CGImage"])
        }

        return cgImage
    }
    
    var body: some View {
        Group {
            switch Result(catching: {
                try filter(image)
            }) {
            case .success(let cgImage):
                VStack {
                
                }
            case .failure(let error):
                VStack {
                    Text("Failed to filter image: \(error.localizedDescription)")
                }
            }
        }
    }
}

#Preview {
    SaturationView()
}
