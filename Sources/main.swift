import SwiftFaiss

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
