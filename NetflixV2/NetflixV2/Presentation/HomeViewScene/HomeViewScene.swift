//
//  HomeViewScene.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import SwiftUI

struct HomeViewScene: View {
    var homeVM = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) { // main container
                
                SharedTopPreviewViewSection(movie: movie1)
                    .frame(width: screen.width, alignment: .top)
                    .padding(.top, -20)
                    .padding(.bottom)
                
                SharedCategoriesViewSection(vm: homeVM)
                
            } // main container
            
        }
        .foregroundStyle(.white)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    HomeViewScene()
}
