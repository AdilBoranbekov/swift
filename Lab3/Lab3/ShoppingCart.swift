class ShoppingCart {
    private(set) var items: [CartItem] = []
    var discountCode: String?
    
    var subtotal: Double {
        return items.reduce(0) { $0 + $1.subtotal }
    }
    
    var discountAmount: Double {
        guard let discountCode = discountCode else { return 0 }
        
        switch discountCode {
        case "SAVE10":
            return subtotal * 0.10
        case "SAVE20":
            return subtotal * 0.20
        case "SAVE50":
            return subtotal * 0.50
        default:
            return 0
        }
    }
    
    var total: Double {
        return subtotal - discountAmount
    }
    
    var itemCount: Int {
        return items.reduce(0) { $0 + $1.quantity }
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    func addItem(product: Product, quantity: Int = 1) {
        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            items[index].increaseQuantity(by: quantity)
        } else {
            let newItem = CartItem(product: product, quantity: quantity)
            items.append(newItem)
        }
    }
    
    func removeItem(productId: String) {
        items.removeAll { $0.product.id == productId }
    }
    
    func updateItemQuantity(productId: String, quantity: Int) {
        guard let index = items.firstIndex(where: { $0.product.id == productId }) else {
            print("Product not found in cart")
            return
        }
        
        if quantity <= 0 {
            items.remove(at: index)
        } else {
            items[index].updateQuantity(quantity)
        }
    }
    
    func clearCart() {
        items.removeAll()
    }
}

