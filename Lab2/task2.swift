func problem2() {
    print("Введите число:")
    if let input = readLine(), let num = Int(input) {
        print("Простые числа до \(num):")
        for i in 2...num {
            var isPrime = true
            for j in 2..<i {
                if i % j == 0 {
                    isPrime = false
                    break
                }
            }
            if isPrime {
                print(i)
            }
        }
    }
}

