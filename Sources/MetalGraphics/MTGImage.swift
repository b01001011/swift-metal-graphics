import Foundation
import CoreImage

import Core

extension MTGImage {
 
    public convenience init?(contentsOf url: URL) {
        guard let source = CGImageSourceCreateWithURL(url as CFURL, nil)
        else { return nil }
        
        guard CGImageSourceGetCount(source) > 0
        else { return nil }
        
        guard let cgImage = CGImageSourceCreateImageAtIndex(source, 0, nil)
        else { return nil }

        let expression = MTGCGImageExpression(cgImage: cgImage)

        self.init(expression: expression)
    }
}
