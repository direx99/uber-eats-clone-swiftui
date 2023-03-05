//
//  HomeModelView.swift
//  Crypto App
//
//  Created by Dinith Hasaranga on 2023-02-12.
//

import SwiftUI

class HomeModelView: ObservableObject {
    
    @Published var categories = [Category]()
    

    
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData(){
        
        let urlString = "http://localhost:8070/categories/"
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error{
                print("Debug : error \(error.localizedDescription)")
                return
            }
            if let response = response as? HTTPURLResponse{
                print("Debug : Response code \(response.statusCode)")

            }

            guard let data = data else { return}
            
            do {
                let categories = try JSONDecoder().decode([Category].self, from: data)
                DispatchQueue.main.async {
                    self.categories = categories
                   
                }

            } catch let error{
                print("Debug : Error  \(error)")

            }
        }.resume()
    }
    
    
}
 
