struct CartItem {
    let product: Product
    private(set) var quantity: Int
    
    var subtotal: Double {
        return product.price * Double(quantity)
    }
    
    init(product: Product, quantity: Int = 1) {
        guard quantity > 0 else {
            fatalError("Quantity must be positive")
        }
        
        self.product = product
        self.quantity = quantity
    }
    
    mutating func updateQuantity(_ newQuantity: Int) {
        guard newQuantity > 0 else {
            fatalError("Quantity must be positive")
        }
        quantity = newQuantity
    }
    
    mutating func increaseQuantity(by amount: Int = 1) {
        guard amount > 0 else {
            fatalError("Amount must be positive")
        }
        quantity += amount
    }
}
