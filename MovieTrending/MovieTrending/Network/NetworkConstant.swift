//
//  NetworkConstant.swift
//  MovieTrending
//
//  Created by Flavio Dobler on 2022-07-19.
//

import Foundation

class NetworkConstant{
    
    
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init(){
        //Singleton
    }
    
    public var apiKey : String {
        get { //API Key from //https://www.themoviedb.org/
            return "871d3332065d04d42934aac3b6c8ff96"
        }
    }
    
    public var serverAdress : String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    
    public var imageServerAdress : String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
    
    
    
}
