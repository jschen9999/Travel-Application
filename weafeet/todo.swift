//
//  todo.swift
//  weafeet
//
//  Created by Jessie on 2022/1/11.
//

import SwiftUI

struct Stock: Identifiable {
    var id = UUID()
    let title: String
}

class StocksViewMode: ObservableObject {
    @Published var stocks: [Stock] = []
}

struct todo: View {
    @StateObject var viewModel = StocksViewMode()
    @State var text = ""
    var body: some View {
        NavigationView {
            VStack {
                Section(header: Text("Add new")) {
                    TextField("New ...", text: $text)
                        .padding()
                    Button(action: {
                        tryToAddToList()
                    }, label: {
                        Text("Add To List")
                            .frame(width: 250, height: 50, alignment: .center)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                    })
                }
                List {
                    ForEach(viewModel.stocks) { stock in
                        StockRow(title: stock.title)
                    }
                }
            }
            .navigationTitle("TO DO LIST")
        }
        
    }
    func tryToAddToList() {
        guard !text.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        let newStock = Stock(title: text)
        viewModel.stocks.append(newStock)
        text = ""
    }
}

struct StockRow: View {
    let title: String
    var body: some View {
        Label (
            title: { Text(title)},
            icon: { Image(systemName: "checkmark.square")}
        )
    }
}

struct todo_Previews: PreviewProvider {
    static var previews: some View {
        todo()
    }
}
