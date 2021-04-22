//
//  ContentView.swift
//  Currency Converter
//
//  Created by Student on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var amount: String = ""
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("SecondView")) {
                TextField("Amount in USD", text: $amount)
                    .keyboardType(.numberPad)
                Text("Convert")
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Currency Converter")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// Yawar wrote this
func getValues() {
    let apiKey = "?rapidapi-key=9486780fb380e1b81dfd"
}
