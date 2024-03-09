//
//  HomeViewScene.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import SwiftUI

struct HomeViewScene: View {
    var homeVM = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) { // main container
                
                SharedCategoriesViewSection(vm: homeVM)
                
            } // main container
            
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    HomeViewScene()
}
