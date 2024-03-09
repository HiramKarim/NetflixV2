//
//  SharedHomeViewSection.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import SwiftUI
import Kingfisher

struct SharedHomeViewSection: View {
    
    var movie: MovieModel
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

#Preview {
    SharedHomeViewSection(movie: movie1)
}
