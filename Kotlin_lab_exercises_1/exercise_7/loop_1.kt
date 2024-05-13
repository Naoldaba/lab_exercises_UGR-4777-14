fun main() {
    println("Enter a string:")
    val input_string = readLine()!!

    if (input_string.isEmpty()) {
        println("Empty string entered.")
        return
    }

    var MinChr = input_string[0]
    var MaxChr = input_string[0]

    for (chr in input_string) {
        if (chr < MinChr) {
            MinChr = chr
        }
        if (chr > MaxChr) {
            MaxChr = chr
        }
    }
    println("Minimum char: $MinChr")
    println("Maximum char: $MaxChr")
}
