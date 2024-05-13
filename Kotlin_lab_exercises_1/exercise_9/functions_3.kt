fun toUpperConverter(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterGreaterNumbers(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calcSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}
