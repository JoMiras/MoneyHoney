import SwiftUI

struct AccountRowView: View {
    @ObservedObject var account: Account

    var bode: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(account.name)
                .font(.headline)
                Text ("Balance: $\(account.balance, specifier: "%.2f")")
                .font(.subheadline)
                Text("Delta: $\(account.delta, specifier: "%.2f")")
                .font(.caption)
                .foregroundColor(account.delta >= 0 ? .green : .red)
            }
            Spacer()
        }
        .padding()
    }
}