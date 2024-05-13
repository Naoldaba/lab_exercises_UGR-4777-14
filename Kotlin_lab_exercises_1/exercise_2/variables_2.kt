fun main() {
    println("Whats the distance value:")
    val distance = readLine()!!.toDouble()

    println("Whats the unit (m):")
    val unit = readLine()

    val convertedDis = when (unit) {
        "m" -> convertMeterToKilometer(distance)
        else -> {
            println("Unsupported unit")
            return
        }
    }

    println("Converted distance: $convertedDis Kms")
}

fun convertMeterToKilometer(meters: Double): Double {
    return meters * 0.001
}

