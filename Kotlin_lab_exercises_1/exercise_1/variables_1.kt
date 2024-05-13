fun main() {
    println("Whats the first number:")
    val Num_1 = readLine()!!.toDouble()

    println("Whats the second number:")
    val Num_2 = readLine()!!.toDouble()

    println("Enter the op (+, -, *, /):")
    val op = readLine()

    val result = when (op) {
        "+" -> Num_1 + Num_2
        "-" -> Num_1 - Num_2
        "*" -> Num_1 * Num_2
        "/" -> Num_1 / Num_2
        else -> {
            println("Invalid op")
            return
        }
    }
    println("Answer: $result")
}