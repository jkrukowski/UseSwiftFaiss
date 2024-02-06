//
//  ContentView.swift
//  SwiftFaissXCode
//
//  Created by Jan Krukowski on 2024-02-06.
//

import SwiftUI
import SwiftFaiss

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            createIndex()
        }
    }

    private func createIndex() {
        do {
            let embeddings: [[Float]] = [
                [0.1, 0.2, 0.3],
                [0.4, 0.5, 0.6],
                [0.7, 0.8, 0.9],
                [1.0, 1.1, 1.2],
                [1.3, 1.4, 1.5],
                [1.6, 1.7, 1.8]
            ]
            let d = embeddings[0].count
            let index = try FlatIndex(d: d, metricType: .l2)
            try index.add(embeddings)
            let result = try index.search([[0.1, 0.5, 0.9]], k: 2)
            print(result)
        } catch {
            print("Error occurred \(error)")
        }
    }
}

#Preview {
    ContentView()
}
