//
//  ViewController.swift
//  API Pratice
//
//  Created by Kuma64 on 10/23/24.
//

import SwiftUI
import Foundation


struct ContentView: View {
    
    //here we define the states one that will hold the error value and one that will return a a recipt class that we will create bellow
    @State private var meal: Recipe?
    @State private var errorMessage: String?
    
    //create the apps body and over lay
    var body: some View {
        VStack(spacing: 20) {
            
            //create a button that is round uses the house icon and has a line around it on the outside
            
            HStack{
                Button(action:{
                }) {
                    Image(systemName: "house") // Use
                                .fontWeight(.bold)
                                .font(.title3)
                                .padding(8)
                }
                .background(Color.purple)
                .foregroundColor(.white)
                .padding(10)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                    
            }
            //here we are getting the image from our class and then editing it to look a certian way.
            AsyncImage(url: URL(string: meal?.strMealThumb ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.orange.opacity(0.5), lineWidth: 5))

            } placeholder: {
                Rectangle()
                    .foregroundColor(.secondary)
            }
            .frame(width: 200, height: 200)
            
            //display the text from my class
            Text(meal?.strMeal ?? "Recipe Name placeholder")
                .bold()
                .font(.title3)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .background(Color.orange)
                .padding()
            
            Text(meal?.strInstructions ?? "This is where the instructions will go")
                .font(.title3)
                .padding()
            
            HStack{
                Button("New") {
                    fetchNewRecipe()
                }
                .background(Color.purple)
                .foregroundColor(.white)
                .padding(20)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button("Save") {
                    fetchNewRecipe()
                }
                .background(Color.purple)
                .foregroundColor(.white)
                .padding(20)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            
            
            // diplay an error message if something goes wrong
            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
        
            }
            
            Spacer()
        }
        .padding()
        .background(Color.blue)
    
        // Now I wll be calling my function which gets data from my api
        .task {
            await fetchInitialRecipe()
        }
    }
    
    // lets make one fucntion that gets us the data when the app is loaded.
    private func fetchInitialRecipe() async {
            do {
                meal = try await getUser()
            } catch let error as GHError {
                handleError(error)
            } catch {
                errorMessage = "Unexpected error"
            }
        }
    
    // We now create a new function that will get us a new recipt
    private func fetchNewRecipe() {
            Task {
                do {
                    meal = try await getUser()
                    errorMessage = nil // Reset error message on successful fetch
                } catch let error as GHError {
                    handleError(error)
                } catch {
                    errorMessage = "Unexpected error"
                }
            }
        }
    
    // A function for handle specific errors
        private func handleError(_ error: GHError) {
            switch error {
            case .invalidURL:
                errorMessage = "Invalid URL"
            case .invalidResponse:
                errorMessage = "Invalid Response"
            case .invalidData:
                errorMessage = "Invalid Data"
            }
        }
    
    
    // func here I am creaitng my function that calls an api and feeds the data to my class. It will be retriving a random recipe each call
    func getUser() async throws -> Recipe {
        let endpoint = "https://www.themealdb.com/api/json/v1/1/random.php"
        
        guard let url = URL(string: endpoint) else {
            throw GHError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw GHError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let mealsResponse = try decoder.decode(MealsResponse.self, from: data)
            return mealsResponse.meals.first ?? Recipe(strMeal: "No Meal", strCategory: "", strArea: "", strInstructions: "", strMealThumb: "")
        } catch {
            throw GHError.invalidData
        }
    }
    
    enum GHError: Error {
        case invalidURL
        case invalidResponse
        case invalidData
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Recipe: Codable {
    let strMeal: String
    let strCategory: String
    let strArea: String
    let strInstructions: String
    let strMealThumb: String
}

struct MealsResponse: Codable {
    let meals: [Recipe]
}


