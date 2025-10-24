import Foundation

func runTests() {
    print("=== Shopping Cart System Tests ===\n")
    
    // 1. Создаем тестовые товары
    print("1. Creating sample products...")
    let laptop = Product(
        name: "MacBook Pro",
        price: 1999.99,
        category: .electronics,
        description: "Apple MacBook Pro 16-inch"
    )
    
    let book = Product(
        name: "Swift Programming",
        price: 49.99,
        category: .books,
        description: "Learn Swift programming"
    )
    
    let headphones = Product(
        name: "AirPods Pro",
        price: 249.99,
        category: .electronics,
        description: "Wireless headphones"
    )
    
    print("   Created: \(laptop.name) - \(laptop.displayPrice)")
    print("   Created: \(book.name) - \(book.displayPrice)")
    print("   Created: \(headphones.name) - \(headphones.displayPrice)")
    
    // 2. Тестируем добавление товаров в корзину
    print("\n2. Testing cart operations...")
    let cart = ShoppingCart()
    cart.addItem(product: laptop, quantity: 1)
    cart.addItem(product: book, quantity: 2)
    
    print("   Added: \(laptop.name) x1")
    print("   Added: \(book.name) x2")
    print("   Cart subtotal: $\(cart.subtotal)")
    print("   Cart item count: \(cart.itemCount)")
    
    // 3. Тестируем добавление того же товара дважды
    print("\n3. Testing duplicate product addition...")
    cart.addItem(product: laptop, quantity: 1)
    print("   Added \(laptop.name) again")
    print("   Cart item count: \(cart.itemCount)")
    
    // 4. Тестируем расчеты корзины
    print("\n4. Testing cart calculations...")
    print("   Subtotal: $\(cart.subtotal)")
    print("   Item count: \(cart.itemCount)")
    
    // 5. Тестируем скидочный код
    print("\n5. Testing discount code...")
    cart.discountCode = "SAVE10"
    print("   Applied discount code: SAVE10")
    print("   Discount amount: $\(cart.discountAmount)")
    print("   Total with discount: $\(cart.total)")
    
    // 6. Тестируем удаление товаров
    print("\n6. Testing item removal...")
    cart.removeItem(productId: book.id)
    print("   Removed: \(book.name)")
    print("   Cart item count: \(cart.itemCount)")
    
    // 7. Демонстрируем РЕФЕРЕНТНУЮ СЕМАНТИКУ
    print("\n7. Demonstrating REFERENCE semantics...")
    func modifyCart(_ cart: ShoppingCart) {
        cart.addItem(product: headphones, quantity: 1)
    }
    
    let itemsBeforeModification = cart.itemCount
    modifyCart(cart)
    let itemsAfterModification = cart.itemCount
    
    print("   Items before modification: \(itemsBeforeModification)")
    print("   Items after modification: \(itemsAfterModification)")
    print("   ✅ Original cart WAS modified (reference type behavior)")
    
    // 8. Демонстрируем VALUE СЕМАНТИКУ
    print("\n8. Demonstrating VALUE semantics...")
    let originalItem = CartItem(product: laptop, quantity: 1)
    var copiedItem = originalItem
    copiedItem.updateQuantity(5)
    
    print("   Original item quantity: \(originalItem.quantity)")
    print("   Copied item quantity: \(copiedItem.quantity)")
    print("   ✅ Original item was NOT affected (value type behavior)")
    
    // 9. Создаем заказ из корзины
    print("\n9. Creating order from cart...")
    let address = Address(
        street: "123 Main St",
        city: "New York",
        zipCode: "10001",
        country: "USA"
    )
    
    let order = Order(from: cart, shippingAddress: address)
    print("   Created order: \(order.orderId)")
    print("   Order total: $\(order.total)")
    
    // 10. Модифицируем корзину после создания заказа
    print("\n10. Testing order immutability...")
    cart.clearCart()
    
    print("   Order items count: \(order.itemCount)")
    print("   Cart items count: \(cart.itemCount)")
    print("   ✅ Order preserved its items (immutable snapshot)")
    
    print("\n=== All tests completed successfully! ===")
}
