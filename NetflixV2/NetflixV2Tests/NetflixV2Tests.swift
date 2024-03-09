//
//  NetflixV2Tests.swift
//  NetflixV2Tests
//
//  Created by Hiram Castro on 09/03/24.
//

import XCTest
@testable import NetflixV2

final class NetflixV2Tests: XCTestCase {
    
    let homeVM = HomeVM()
    
    func test_validateInitializationOfCategoriesArray() {
        //given
        let categories = homeVM.getCategories()
        //when
        
        //then
        XCTAssertFalse(categories.isEmpty)
    }
    
    func test_getMoviesByCategoty() {
        //given
        let categories = homeVM.getCategories().shuffled()
        //when
        let category = categories.first ?? ""
        let movie = homeVM.getMovie(forCategory: category)
        //then
        XCTAssertFalse(movie.isEmpty)
    }

}
