import Foundation

struct Product {
    let id: String
    let name: String
    let price: Double
    let category: Category
    let description: String
    
    enum Category {
        case electronics
        case clothing
        case food
        case books
    }
    
    var displayPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        return formatter.string(from: NSNumber(value: price)) ?? "$\(price)"
    }
    
    init(id: String = UUID().uuidString, name: String, price: Double, category: Category, description: String) {
        guard price > 0 else {
            fatalError("Price must be positive")
        }
        
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}
