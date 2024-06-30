//
//  ContentView.swift
//  CatalystIconImportApp
//
//  Created by Kanstantsin Malikau on 23.06.24.
//

import SwiftUI
import IconPackager
import SVGKit


struct SVGImageView: UIViewRepresentable {
    let named: String
    
    func makeUIView(context: Context) -> SVGKFastImageView {
        let iconView = IconPackager.imageView(named: named)
        return iconView!
    }
    
    func updateUIView(_ uiView: SVGKFastImageView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            SVGImageView(named: "reaction-clapping")
                .frame(width: 100, height: 100)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
