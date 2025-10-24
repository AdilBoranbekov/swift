func problem10() {
    print("Введите строку:")
    if let text = readLine() {
        var seen: Set<Character> = []
        var unique = ""
        for ch in text {
            if !seen.contains(ch) {
                seen.insert(ch)
                unique.append(ch)
            }
        }
        print("Уникальные символы: \(unique)")
    }
}

