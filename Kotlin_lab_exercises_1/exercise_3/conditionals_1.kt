fun main() {
    println("Whats the numeric grade (between 0 and 100):")
    val num_grade = readLine()!!.toInt()

    val lett_grade = when {
        num_grade in 90..100 -> "A+"
        num_grade in 83..89 -> "A"
        num_grade in 80..83 -> "A-"
        num_grade in 75..79 -> "B+"
        num_grade in 70..74 -> "B"
        num_grade in 60..69 -> "C"
        num_grade in 50..59 -> "D"
        num_grade < 50 -> "F"
        else -> {
            println("Invalid let_grade")
            return
        }
    }

    println("Letter let_grade: $lett_grade")
}
