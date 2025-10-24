func problem4() {
    var list: [String] = []
    print("Введите товары (пустая строка — конец):")
    while let item = readLine(), item != "" {
        list.append(item)
    }
    print("Ваш список покупок:")
    for i in list {
        print("- \(i)")
    }
}

