class BankAccount(val accountNumber: String, var balance: Double) {
    fun deposit(amount: Double) {
        if (amount > 0) {
            balance += amount
            println("Deposit successful. New balance: $balance")
        } else {
            println("Invalid deposit amount.")
        }
    }

    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (balance >= amount) {
                balance -= amount
                println("Withdrawal successful. New balance: $balance")
            } else {
                println("Insufficient funds. Cannot withdraw.")
            }
        } else {
            println("Invalid withdrawal amount.")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}
