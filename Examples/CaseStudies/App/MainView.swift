import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SaturationView()) {
                    Text("Saturation Filter")
                }
            }
#if os(iOS)
            .listStyle(.grouped)
#endif

            Text("swift-metal-graphics case studies.")
        }
    }
}

#Preview {
    MainView()
}
