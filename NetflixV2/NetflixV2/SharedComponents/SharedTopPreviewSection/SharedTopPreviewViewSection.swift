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
    
    let gradientColors = Gradient(stops: [
        .init(color: .black, location: 0),
        .init(color: .black, location: 0.70),
        .init(color: .black, location: 1)
    ])
    
    let linearGradient = LinearGradient(gradient: Gradient(colors: [Color.red, 
                                                                    Color.blue]),
                                        startPoint: .top,
                                        endPoint: .bottom)
    
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
                            .font(.callout)
                        if !isLastCategory(withCategory: category) {
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundStyle(.blue)
                        }
                    }
                }
                .padding()
                .font(.subheadline)
                
                HStack {
                    VStack {
                        Image(systemName: isMyListButtonPressed(isPressed: myListbuttonPressed))
                        Button(action: {
                            myListbuttonPressed.toggle()
                        }, label: {
                            Text("My list")
                                .font(.headline)
                        })
                    }
                    .padding(.trailing, 20)
                    
                    Button("Play",
                           systemImage: "play.fill") {
                        
                    }
                    .frame(width: 180, height: 40)
                    .font(.headline)
                    .foregroundStyle(.black)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color(UIColor.white)))
                    
                    VStack {
                        Image(systemName: "info.circle")
                        Button(action: {
                            
                        }, label: {
                            Text("Info")
                                .font(.headline)
                        })
                    }
                    .padding(.leading, 20)
                }
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
                                       startPoint: .top,
                                       endPoint: .bottom))
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SharedTopPreviewViewSection(movie: movie1)
}
