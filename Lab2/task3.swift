func problem3() {
    print("Введите температуру в Цельсиях:")
    if let input = readLine(), let c = Double(input) {
        let f = c * 9/5 + 32
        print("\(c)°C = \(f)°F")
    }
}

