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
        ScrollView {                 VStack(spacing: 20) {
            
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
            
            Text(meal?.strMeal ?? "Recipe Name placeholder")
                .bold()
                .font(.title3)
                .foregroundColor(Color(red: 237/255, green: 184/255, blue: 78/255)) // Custom color #edb84e
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                .font(.title3)
                
                
            
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
            
            
            
            Text("Ingredients")
                .bold()
                .font(.title3)
                
                
            ScrollView(.vertical) {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                    
                    if let ingredient = meal?.strIngredient1, let measure = meal?.strMeasure1, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient2, let measure = meal?.strMeasure2, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient3, let measure = meal?.strMeasure3, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient4, let measure = meal?.strMeasure4, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient5, let measure = meal?.strMeasure5, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient6, let measure = meal?.strMeasure6, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient7, let measure = meal?.strMeasure7, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient8, let measure = meal?.strMeasure8, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient9, let measure = meal?.strMeasure9, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient10, let measure = meal?.strMeasure10, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient11, let measure = meal?.strMeasure11, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient12, let measure = meal?.strMeasure12, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient13, let measure = meal?.strMeasure13, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient14, let measure = meal?.strMeasure14, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient15, let measure = meal?.strMeasure15, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient16, let measure = meal?.strMeasure16, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient17, let measure = meal?.strMeasure17, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient18, let measure = meal?.strMeasure18, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient19, let measure = meal?.strMeasure19, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if let ingredient = meal?.strIngredient20, let measure = meal?.strMeasure20, !ingredient.isEmpty {
                        Text("• \(ingredient): \(measure)")
                            .padding(.vertical, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(width: 350)
                .background(Color(UIColor(red: 227/255, green: 200/255, blue: 152/255, alpha: 1)))
                .cornerRadius(15)
                .shadow(color: .gray, radius: 10, x: 0, y: 4)
                .padding(.top, 10)
                .padding(.bottom, 10)
            }




            
            Text("Ingredients")
                .bold()
                .font(.title3)
            

            
            
                
    
            Text(meal?.strInstructions ?? "This is where the instructions will go")
                .font(.title3)
                .background(Color(UIColor(red: 227/255, green: 200/255, blue: 152/255, alpha: 1)))
                .cornerRadius(15)
                .padding([.top, .leading, .trailing], 20)
                    .padding(.bottom, 10)
                
                
            
//
            
            HStack{
                Button("New") {
                    fetchNewRecipe()
                }
                .background(Color.purple)
                .foregroundColor(.black)
                .padding([.top, .leading, .trailing], 20)
                .padding(.bottom, 10)
                .cornerRadius(15)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: .infinity)

                Button("Save") {
                    fetchNewRecipe()
                }
                .background(Color.purple)
                .foregroundColor(.black)
                .padding([.top, .leading, .trailing], 20)
                .padding(.bottom, 10)
                .cornerRadius(15)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: .infinity)
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
        
            
            // Now I wll be calling my function which gets data from my api
        .task {
            await fetchInitialRecipe()
        }
        }
        .background(Color(red: 185/255, green: 240/255, blue: 205/255))
        .edgesIgnoringSafeArea(.all)
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
            return mealsResponse.meals.first ?? Recipe(strMeal: "No Meal",
                       strCategory: "",
                       strArea: "",
                       strInstructions: "",
                       strMealThumb: "",
                       strIngredient1:nil ,
                       strIngredient2: nil,
                       strIngredient3: nil,
                       strIngredient4: nil,
                       strIngredient5: nil,
                       strIngredient6: nil,
                       strIngredient7: nil,
                       strIngredient8: nil,
                       strIngredient9: nil,
                       strIngredient10: nil,
                       strIngredient11: nil,
                       strIngredient12: nil,
                       strIngredient13: nil,
                       strIngredient14: nil,
                       strIngredient15: nil,
                       strIngredient16: nil,
                       strIngredient17: nil,
                       strIngredient18: nil,
                       strIngredient19: nil,
                       strIngredient20: nil,
                       strMeasure1: nil,
                       strMeasure2: nil,
                       strMeasure3: nil,
                       strMeasure4: nil,
                       strMeasure5: nil,
                       strMeasure6: nil,
                       strMeasure7: nil,
                       strMeasure8: nil,
                       strMeasure9: nil,
                       strMeasure10: nil,
                       strMeasure11: nil,
                       strMeasure12: nil,
                       strMeasure13: nil,
                       strMeasure14: nil,
                       strMeasure15: nil,
                       strMeasure16: nil,
                       strMeasure17: nil,
                       strMeasure18: nil,
                       strMeasure19: nil,
                       strMeasure20: nil)
            
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
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    
    // Corresponding measure properties for 1 to 20
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    
}

struct MealsResponse: Codable {
    let meals: [Recipe]
}


  
