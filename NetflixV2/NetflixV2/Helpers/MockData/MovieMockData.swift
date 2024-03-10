//
//  MovieMockData.swift
//  NetflixV2
//
//  Created by Hiram Castro on 09/03/24.
//

import Foundation

let movie1 = MovieModel(id: UUID().uuidString,
                        name: "DARK",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie2 = MovieModel(id: UUID().uuidString,
                        name: "Stronaut",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie3 = MovieModel(id: UUID().uuidString,
                        name: "Avatar",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie4 = MovieModel(id: UUID().uuidString,
                        name: "No where to run",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie5 = MovieModel(id: UUID().uuidString,
                        name: "Spiders",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie6 = MovieModel(id: UUID().uuidString,
                        name: "Image Good",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie7 = MovieModel(id: UUID().uuidString,
                        name: "Cliff 'em all",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie8 = MovieModel(id: UUID().uuidString,
                        name: "Nocturnal",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie9 = MovieModel(id: UUID().uuidString,
                        name: "Holocaus",
                        thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                        categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])
let movie10 = MovieModel(id: UUID().uuidString,
                         name: "Akira",
                         thumbnailURL: URL(string: "https://picsum.photos/200/300")!, 
                         categories: ["Dystopian", "Exciting", "Suspenful" ,"Sci-Fi Tv"])

let moviesExample: [MovieModel] = [
    movie1,
    movie2,
    movie3,
    movie4,
    movie5,
    movie6,
    movie7,
    movie8,
    movie9,
    movie10
]
