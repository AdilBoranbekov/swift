func problem6() {
    print("Введите количество чисел:")
    if let input = readLine(), let n = Int(input) {
        var a = 0, b = 1
        for _ in 0..<n {
            print(a)
            let temp = a + b
            a = b
            b = temp
        }
    }
}
