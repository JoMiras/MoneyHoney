import SwiftUI

struct ContentView: View {
    @StateObject private var accounts = AccountList()

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(accounts.accountList) { account in
                        AccountRowView(account: account)
                    }
                }
                .listStyle(PlainListStyle())
                // Button that simulates a balance update
                
                Button(action: {
                    accounts.simulateBalanceUpdates()
                }) {
                    Text("Simulate Balance Updates")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .padding()
            }
            .navigationTitle("Wealth Management")
        }
    }
}