//
//  ContentView.swift
//  FRUITS
//
//  Created by Artyom Romanchuk on 13.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
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
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSettings = true
                                    }){
                                        Image(systemName: "slider.horizontal.3")
                                    }//: Button
                                    .sheet(isPresented: $isShowingSettings, content: {
                                        SettingsView()
                                    })
            )
        } //: NavigationView  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData) //add data fruitsData in preview
    }
}
