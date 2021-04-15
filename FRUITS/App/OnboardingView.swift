//
//  OnboardingView.swift
//  FRUITS
//
//  Created by Artyom Romanchuk on 15.04.2021.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                FuritCardView()
            } //: LOOP 
            
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
       
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
