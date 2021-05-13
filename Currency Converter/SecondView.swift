//
//  SecondView.swift
//  Currency Converter
//
//  Created by Student on 5/4/21.
//

import SwiftUI

struct SecondView: View {
    @State private var converted = 0.0
    let amount: Double
    let currencyNames = [
        Currency(name: "Chinese Yuan", symbol: "CNY"),
        Currency(name: "Euro", symbol: "EUR"),
        Currency(name: "Indian Rupee", symbol: "INR"),
        Currency(name: "Peso", symbol: "MXN"),
        Currency(name: "British Pound", symbol: "GBP"),
        Currency(name: "Canadian Dollar", symbol: "CAD")
    ]
    var body: some View {
            List(currencyNames) {currency in
                Button(currency.name) {
                    queryApi(currency: currency.symbol)
                }
            }
            Text("Converted Currency:")
            Text(String(format: "%.3f", converted))
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color.red)
            Text("")
            Text("")
            Text("")
            Text("")
            Text("")
            Text("")
            Text("")
        }
    
    func queryApi(currency: String) {
        let query = "https://currency-converter5.p.rapidapi.com/currency/convert?format=json&from=USD&to=\(currency)&amount=1&rapidapi-key=6f680e027cmsh663637dcbd8e3aap10a339jsn6758ecd66f5f"
        if let url = URL(string: query) {
            if let data = try? Data(contentsOf: url) {
                let json = try! JSON(data: data)
                let rates = json["rates"].dictionaryValue
                if let symbol = rates[currency]?.dictionaryValue {
                    if let rate = Double(symbol["rate"]!.stringValue) {
                    converted = rate * amount
                    }
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(amount: 1.00)
    }
}

struct Currency: Identifiable {
    var id = UUID()
    var name: String
    var symbol: String
}

