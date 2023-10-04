//
//  DetailView.swift
//  GuideBook
//
//  Created by Sunil Sharma on 01/10/23.
//

import SwiftUI

struct DetailView: View {
    var attraction: Attraction
    var body: some View {
        VStack{
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            
            ScrollView{
                
                VStack(alignment: .leading){
                    
                    Text(attraction.name)
                        .bold()
                        .font(.title)
                    
                    Text(attraction.longDescription)
                    
                    
                }
                .padding()
              
                Spacer()
                
                Button(action: {
                    
                }){
                    Text("Get Direction")
                        .padding(.horizontal)
                }
                .buttonStyle(.borderedProminent)
            }
        
        }
        .padding(.bottom)
        .ignoresSafeArea()
        
    }
}

#Preview {
    DetailView(attraction:  Attraction(name: "Pantheon",
                                       summary: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
                                       longDescription: """
            The Pantheon from Greek is a former Roman temple and, since 609 AD, a Catholic church (Basilica di Santa Maria ad Martyres or Basilica of St. Mary and the Martyrs) in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus (27 BC – 14 AD). It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down.
            """,
                                       imageName: "pantheon", latLong: "41.898762500696236, 12.476915812472798"))
}
