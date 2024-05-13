fun main() {
    println("Enter a string:")
    val string = readLine()!!

    val (wordCnt, upperCaseCnt, vowelCnt) = string_analyzer(string)
    
    println("Number of words: $wordCnt")
    println("Number of uppercase letters: $upperCaseCnt")
    println("Number of vowels: $vowelCnt")
}

fun string_analyzer(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex())
    val wordCnt = words.size

    val upperCaseCnt = input.count { it.isUpperCase() }

    val vowelCnt = input.count { it.toLowerCase() in "aeiou" }

    return Triple(wordCnt, upperCaseCnt, vowelCnt)
}
