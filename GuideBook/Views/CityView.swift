//
//  ContentView.swift
//  GuideBook
//
//  Created by Sunil Sharma on 01/10/23.
//

import SwiftUI

struct CityView: View {
    @State var cities: [City] = []
    var dataService = DataServices()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView{
                
                VStack{
                    
                    ForEach(cities){ city in
                        
                        
                        NavigationLink(destination: {
                            
                            AttractionView(city: city)
                            
                        }){
                            
                            CityCard(city: city)
                                .padding(.bottom, 20)
                            
                        }
                    }
                    
                }
            }
            .ignoresSafeArea()
            .scrollIndicators(.hidden)
            .padding(.horizontal)
            
        }
        .onAppear{
            
            cities = dataService.getData()
            
        }
        
    }
}

#Preview {
    
    CityView()
    
}
