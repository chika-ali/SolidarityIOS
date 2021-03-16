//
//  ContentView.swift
//  Solidarity
//
//  Created by    CHIKA Ali on 15/03/2021.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
      
        TabView{
            DemandesView( x: tableauAnnonce)
            .tabItem {
                    Image(systemName: "book.fill")
                    Text("Annonces")
                }
            RedView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Recherche")
                }
            MessageView()
                .tabItem {
                    Image(systemName: "bubble.left")
                    Text("Message")
                }
            ProfilAppView()
                 .tabItem {
                     Image(systemName: "person.circle")
                     Text("Profil")
                 }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
