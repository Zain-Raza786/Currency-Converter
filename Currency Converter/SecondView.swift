//
//  SecondView.swift
//  Currency Converter
//
//  Created by Student on 5/4/21.
//

import SwiftUI

struct SecondView: View {
    var currencies = ["Chinese Yuan", "Japanese Yen", "Euro", "Indian Rupee", "British Pound", "Canadian Dollar"]
    var body: some View {
        NavigationView{
            List {
                ForEach(self.currencies, id: \.self) { item in
                    Text(item)
                }
            } .navigationBarTitle("Currencies")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
