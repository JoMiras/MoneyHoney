import Foundation

class AccountList: OBservableObject {
    @Published var accountList: [Account] = [
        Account(name: "Credit Card 1", initialBalance: 1000),
        Account(name: "Credit Card 2", initialBalance: 500),
        Account(name: "Savings Account", initialBalance: 10000)

    ]

    // Simulate balance updates for all accounts 
    func simulateBalanceUpdates() {
        for account in accountList {
            let randomDelta = Double.random(in: -200...200)
            account.updateBalance(to: account.balance + randomDelta)

        }
    }
}
