//
//  APICaller.swift
//  MovieTrending
//
//  Created by Flavio Dobler on 2022-07-19.
//

import Foundation

public class APICaller {
    
    enum NetworkError : Error {
        case urlError
        case canNotParseData
    }
    
    
    
    static func getTrendingMovies(
        completionHandler: @escaping (_ result : Result<TrendingMovieModel, NetworkError >) -> Void ){
        
            let urlString = NetworkConstant.shared.serverAdress + "trending/all/day?api=key" + NetworkConstant.shared.apiKey
            
            guard let url = URL
    }
}
