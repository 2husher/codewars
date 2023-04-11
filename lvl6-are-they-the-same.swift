func comp(_ a: [Int], _ b: [Int]) -> Bool {
    a.map { $0 * $0 }.sorted() == b.sorted()
}
