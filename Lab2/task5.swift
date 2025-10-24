func problem5() {
    print("Введите текст:")
    if let text = readLine() {
        let words = text.split(separator: " ")
        print("Количество слов: \(words.count)")
    }
}

