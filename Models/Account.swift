import Foundation
import Combine

class Acccount: OBservableObject, Identifiable {
    @Publishd var name: String
    @Published var balance: Double
    private var previousBalance: Double

    init(name: String, initialBalance: Double) {
        self.name = name
        self.balance = initialBalance
        self.previousBalance = initialBalance

    }

    // Update the balance and notify observers

    func updateBalance(to newBalance: Double) {
        previousBalance = balance
        balance = newBalance
    }

    // Compute the delta

    var delta: Double {
        return balance - previousBalance
    }
}