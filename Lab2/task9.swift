func problem9() {
    print("Введите первое число:")
    guard let aStr = readLine(), let a = Double(aStr) else { return }
    print("Введите оператор (+, -, *, /):")
    guard let op = readLine() else { return }
    print("Введите второе число:")
    guard let bStr = readLine(), let b = Double(bStr) else { return }

    switch op {
    case "+": print("Результат: \(a + b)")
    case "-": print("Результат: \(a - b)")
    case "*": print("Результат: \(a * b)")
    case "/": print("Результат: \(b != 0 ? a / b : 0)")
    default: print("Неизвестный оператор")
    }
}

