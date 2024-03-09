//
//  SharedCategoriesViewSection.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import SwiftUI

struct SharedCategoriesViewSection: View {
    var vm: HomeProtocol
    
    var body: some View {
        LazyVStack {//categories vStack
            ForEach(vm.getCategories(),
                    id: \.self) { category in
                VStack {
                    HStack {
                        Text(category)
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(vm.getMovie(forCategory: category), 
                                    id: \.self) { movie in
                                SharedHomeViewSection(movie: movie)
                                    .frame(width: 100, height: 200)
                                    .padding(.horizontal, 20)
                            }
                        }
                    }
                }
            }
        } //categories vStack
    }
}

#Preview {
    SharedCategoriesViewSection(vm: HomeVM())
}
