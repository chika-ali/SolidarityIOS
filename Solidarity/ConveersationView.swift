//
//  ConveersationView.swift
//  Solidarity
//
//  Created by    CHIKA Ali on 15/03/2021.
//

import SwiftUI

struct ConveersationView: View {
    let conversation:[ConversationModel]
    var body: some View {
        NavigationView {
        NavigationLink(
            destination: MessageView(),
            label: {
                ListeRow(variable: tableauConversation)
            })
            .navigationBarTitle("Conversation")
        }
       
        }
}
struct ConveersationView_Previews: PreviewProvider {
    static var previews: some View {
        ConveersationView(conversation: tableauConversation)
    }
}

struct ListeRow: View {
    let variable:[ConversationModel]
    var body: some View {
        List(variable){x in
        HStack {
            Image(x.sender.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100,height:100)
                .cornerRadius(150)
            VStack {
                Text(x.date)
                    .padding()
                HStack {
                    Text("Emetteur")
                        .padding()
                    Text(x.sender.nom)
                        .padding()
                        .foregroundColor(.orange)
                }
                HStack {
                    Text("Receveur")
                        .padding()
                    Text(x.reciver.nom)
                        .foregroundColor(.yellow)
                        .padding()
                }
                
            }
            
        }
    }
}
}
