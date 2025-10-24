func problem8() {
    print("Введите слово:")
    if let word = readLine() {
        let reversed = String(word.reversed())
        if word.lowercased() == reversed.lowercased() {
            print("Это палиндром")
        } else {
            print("Не палиндром")
        }
    }
}

