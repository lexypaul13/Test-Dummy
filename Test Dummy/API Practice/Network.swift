//
//  Network.swift
//  Test Dummy
//
//  Created by Alex Paul on 1/16/22.
//

import Foundation

class Network{
    
    func getJSON(urlString:String, completion: @escaping ([News]?)-> Void){
        guard let url = URL(string: urlString ) else{
            return
        }
        let request =  URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                return
            }
            guard let data = data else {
                completion(nil)
                return
            }
           let decoder = JSONDecoder()
            guard let decodedNews = try? decoder.decode([News].self, from: data)else {
                completion(nil)
                return
            }
             completion(decodedNews)
        }.resume()
    }
    
 }

