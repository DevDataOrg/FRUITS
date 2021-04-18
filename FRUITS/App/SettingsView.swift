//
//  SettingsView.swift
//  FRUITS
//
//  Created by Artyom Romanchuk on 18.04.2021.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK:  - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: SECTION 1
                    
                    //How add different view in GroupBox pls read documentations
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")){
                        Divider().padding(.vertical, 4) //devider in groupbox
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. Nine have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more...")
                                .font(.footnote)
                        }//: HORIZONTAL
                    }
                    
                    //MARK: SECTION 2
                    
                    
                    //MARK: SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "Artme R")
                        SettingsRowView(name: "Design", content: "Artme R")
                        SettingsRowView(name: "Compatibility", content: "Artme R")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI APP Make", linkDestination: "devdata.org")
                        SettingsRowView(name: "Twitter", linkLabel: "@pmbiclub", linkDestination: "twitter.com/pmbiclub")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.12")
                    }//: BOX
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }){
                                            Image(systemName: "xmark")
                                        }
                )
                .padding()
            }//: SCROLL
        }//: NAVIGATION
        
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
        
    }
}
