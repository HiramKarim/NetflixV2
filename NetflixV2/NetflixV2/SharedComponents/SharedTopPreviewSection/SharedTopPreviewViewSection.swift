//
//  SwiftUIView.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import SwiftUI
import Kingfisher

struct SharedTopPreviewViewSection: View {
    
    var movie: MovieModel
    @State var myListbuttonPressed: Bool = false
    
    private func isLastCategory(withCategory category: String) -> Bool {
        return (movie.categories.last ?? "") == category
    }
    
    private func isMyListButtonPressed(isPressed: Bool) -> String {
        return myListbuttonPressed ? "checkmark" : "plus"
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                        if !isLastCategory(withCategory: category) {
                            Circle()
                                .frame(width: 5, height: 5)
                        }
                    }
                }
                .padding()
                .font(.subheadline)
                
                HStack {
                    Button("Play", 
                           systemImage: "play.fill") {
                        
                    }
                    .frame(width: 180, height: 40)
                    .font(.headline)
                    .foregroundStyle(.black)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(Color(UIColor.white)))
                    
                    Button("My list",
                           systemImage: isMyListButtonPressed(isPressed: myListbuttonPressed)) {
                        myListbuttonPressed.toggle()
                    }
                    .frame(width: 180, height: 40)
                    .foregroundStyle(.white)
                    .font(.headline)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(Color(UIColor.lightGray).opacity(0.5)))
                }
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SharedTopPreviewViewSection(movie: movie1)
}
