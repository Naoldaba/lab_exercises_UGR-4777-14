fun main() {
    println("Whats the original price:")
    val originalPrice = readLine()!!.toDouble()

    println("Enter the discount percentage (enter a number between 0 and 1):")
    var discount_per = readLine()!!.toDouble()

    val threshold = 0.5 

    if (discount_per > threshold) {
        println("The discount is too high. Setting it to the threshold value of ${threshold * 100}%")
        discount_per = threshold
    }

    val finalPrice = originalPrice * (1 - discount_per)

    println("Original price: $originalPrice")
    println("Discount percentage: ${discount_per * 100}%")
    println("Final price after discount: $finalPrice")
}


