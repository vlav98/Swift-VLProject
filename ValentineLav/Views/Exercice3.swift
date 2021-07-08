//
//  Exercice3.swift
//  ValentineLav
//
//  Created by jpo on 08/07/2021.
//

import SwiftUI
import Kingfisher

struct Exercice3: View {
    var body: some View {
        VStack {
//            KFImage(<#T##url: URL?##URL?#>)
            Text("Je n'ai pas eu le temps de le faire ! 😭")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
        }
    }
    
    func loadMovies() {
        let url = URL(string:  "https://api.themoviedb.org/3/movie/671?api_key=\(API_KEY)")!

        let task = URLSession.shared.dataTask(with: url) { data, response, error in

            if error != nil {
                print(error!.localizedDescription)
            }

            guard let data = data else { return }

            do {
//                let decoder = JSONDecoder()
//                let json = try decoder.decode(RestResult.self, from: data)
                
//                for restMovie in json.movies {
//                    print(restMovie.posterURL!)
//                    let movie = Movie(posterURL: URL(string: restMovie.posterURL!), title: restMovie.title, description: restMovie.overview, rating: restMovie.rating)
//                    movieList.append(movie)
//                }
            } catch {
//                content = "Erreur de chargement"
            }
//            content = String(data: data, encoding: .utf8)!
        }

//        task.resume()
    }
}

struct Exercice3_Previews: PreviewProvider {
    static var previews: some View {
        Exercice3()
    }
}
