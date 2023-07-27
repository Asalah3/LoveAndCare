//
//  ContentView.swift
//  Love&Care
//
//  Created by Asalah Sayed on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    // Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    // Body
    var body: some View {
        if isOnboarding{
            Onboarding()
        }else{
            Home()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
