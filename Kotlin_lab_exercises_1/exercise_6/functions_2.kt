
fun findMax(nums: List<Int>): Int? {
    if (nums.isEmpty()) return null
    var max = nums[0]
    for (number in nums) {
        if (number > max) {
            max = number
        }
    }
    return max
}

fun filterEvenNumbers(nums: List<Int>): List<Int> {
    return nums.filter { it % 2 == 0 }
}

fun calculateAverage(nums: List<Double>): Double? {
    if (nums.isEmpty()) return null
    var Sum = 0.0
    for (number in nums) {
        Sum += number
    }
    return Sum / nums.size
}
