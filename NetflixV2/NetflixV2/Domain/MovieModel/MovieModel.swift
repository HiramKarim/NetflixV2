//
//  MovieModel.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import Foundation

struct MovieModel: Hashable {
    var id: String
    var name: String
    var thumbnailURL: URL?
    var categories: [String]
}

extension MovieModel {
    static func getMoviesCatalog() -> [String: [MovieModel]] {
        return [
            "Trending Now": moviesExample,
            "Comedy": moviesExample,
            "New Releases": moviesExample,
            "Watch It Again": moviesExample,
            "Sci-Fi": moviesExample,
            "Horror": moviesExample
        ]
    }
}
