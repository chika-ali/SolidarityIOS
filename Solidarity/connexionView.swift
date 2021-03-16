//
//  connexionView.swift
//  fon
//
//  Created by    CHIKA Ali on 10/03/2021.
//

import SwiftUI
let name: String = "Ali"
let pass: String = "Aaa"

let couleur = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct connexionView: View {
    @State var userName :String = ""
    @State var password :String = ""
    
    @State var authentFailed: Bool = false
    @State var authenSucced: Bool = false
    
    var body: some View {
        
        
        ZStack {
            VStack {
                HelloText()
                UserImage()
                UserName(userName: $userName)
                PassWord(password: $password)
                if authentFailed{
                    Text("Information incorrect !!!!")
                        .foregroundColor(.red)
                        .offset(y: -10)
                    
                }
                Button(action: {
                    if self.userName == name && self.password == pass
                    {
                        self.authenSucced = true
                        self.authentFailed = false
                    }
                    else{
                        self.authenSucced = false
                        self.authentFailed = true
                        //demanderUserLocationPermission()
                    }
                })
                {
                    LoginButtom()
                }
            }
            .padding()
            if authenSucced{
                Text("Authentification succed")
                    .font(.headline)
                    .frame(width: 250, height: 80)
                    .background(Color.yellow)
                    .cornerRadius(20)
                    .animation(Animation.default)
            }
            
        }
        
    }
}
struct connexionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            connexionView()
            connexionView()
        }
    }
}
//#ifDEBUG
//#endif

struct HelloText: View {
    var body: some View {
        Text("Hello  les solidaires  !")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 20)
    }
}
struct UserImage: View {
    var body: some View {
        Image("voiture")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}

struct LoginButtom: View {
    var body: some View {
        Text("connexion")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.blue)
            .cornerRadius(35.0)
    }
}

struct UserName: View {
    //creation de variable binding pour faire liaison entre contentView et subView
    @Binding var userName: String
    var body: some View {
        TextField(("User name"), text: $userName)
            .padding()
            .background(couleur)
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}

struct PassWord: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(couleur)
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}
