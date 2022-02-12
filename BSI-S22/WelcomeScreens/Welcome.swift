//
//  Welcome.swift
//  BSI-S22
//
//  Created by Vincent Carrancho on 2/11/22.
//

import SwiftUI

struct Welcome: View {
    
    let resortName: String = "The EverGreen"
    let resortLocation: String = "At West Kendall"
    
    @State var isNext = false; // Make sure to put the State modifier for any variable that depends on state.
    
    func navigateToNext() -> Void {
        isNext = !isNext // modifies the is next value
    }
    
    var body: some View {
        NavigationView {
            Color.blue.ignoresSafeArea().overlay(
                VStack {
                    
                    VStack (alignment: .trailing, spacing: -10){
                        Text("Royal Villas Resort").font(.system(size: 72)).fontWeight(.heavy).foregroundColor(.white)
                        Text("At West Kendall").font(.system(size: 36)).fontWeight(.light).foregroundColor(.white)
                    }
                    .padding(.bottom, 100)

                    Button(action: navigateToNext, label: {Text("Tap Here To Begin")
                        .foregroundColor(Color.white)})
                    
                    NavigationLink("Next", isActive: $isNext, destination: {LanguageSelect()}).hidden()
                }
            )
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
