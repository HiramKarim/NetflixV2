//
//  HomeVM.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import Foundation

protocol HomeProtocol: AnyObject {
    func getCategories() -> [String]
    func getMovie(forCategory category: String) -> [MovieModel]
}

final class HomeVM: ObservableObject {
    
    @Published var movies: [String: [MovieModel]] = [:]
    
    init() {
        setupMovies()
    }
    
    private func setupMovies() {
        movies["Trending Now"] = moviesExample
        movies["Comedy"] = moviesExample
        movies["New Releases"] = moviesExample
        movies["Watch It Again"] = moviesExample
        movies["Sci-Fi"] = moviesExample
        movies["Horror"] = moviesExample
    }
}

extension HomeVM: HomeProtocol {
    func getCategories() -> [String] {
        return movies.keys.map { String($0) }
    }
    
    func getMovie(forCategory category: String) -> [MovieModel] {
        return movies[category] ?? []
    }
}
