fun main() {
    val pass_len = 8 
    val password = passwordGenerator(pass_len)
    println("Generated Password: $password")
}

fun passwordGenerator(length: Int): String {
    val possible_chrs = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*')
    val random = java.util.Random()
    return (1..length)
        .map { possible_chrs[random.nextInt(possible_chrs.size)] }
        .joinToString("")
}
