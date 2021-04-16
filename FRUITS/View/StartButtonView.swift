//
//  StartButtonView.swift
//  FRUITS
//
//  Created by Artyom Romanchuk on 15.04.2021.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    //we are make logic what 1st view isOnboarding True or False if then we are press start button
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
            //we are make logic what 1st view isOnboarding True or False if then we are press start button
            isOnboarding = false
        }){
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
