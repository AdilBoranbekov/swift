func problem7() {
    print("Введите балл (0–100):")
    if let input = readLine(), let score = Int(input) {
        switch score {
        case 90...100: print("Оценка: A")
        case 80..<90: print("Оценка: B")
        case 70..<80: print("Оценка: C")
        case 60..<70: print("Оценка: D")
        default: print("Оценка: F")
        }
    }
}

