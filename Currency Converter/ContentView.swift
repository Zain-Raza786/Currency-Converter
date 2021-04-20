//
//  ContentView.swift
//  Currency Converter
//
//  Created by Student on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("SecondView")) {
                Text("Convert")
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
