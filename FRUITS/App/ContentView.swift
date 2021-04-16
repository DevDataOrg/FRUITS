//
//  ContentView.swift
//  FRUITS
//
//  Created by Artyom Romanchuk on 13.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List {
                ForEach (fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRawView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }.navigationTitle("Fruits")
        } //: NavigationView  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData) //add data fruitsData in preview
    }
}
