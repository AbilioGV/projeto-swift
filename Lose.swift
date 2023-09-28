//
//  Lose.swift
//  projeto-tela2
//
//  Created by Student on 26/09/23.
//

import SwiftUI
import UIKit

struct Lose: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let Marrom = Color("Marrom")
    
    var body: some View {
        ZStack {
            verdeFundo
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack{
                    
                    Rectangle()
                        .frame(width: .infinity, height: 100)
                        .foregroundColor(verdeAmarelo)
                        .shadow(radius: 5)
                        .overlay(){
                            Image("Abidle")
                                .shadow(radius: 4, x:0, y:4)
                        }  .ignoresSafeArea()
                    VStack {
                        Text("Você perdeu!")
                            .font(.custom("JockeyOne-Regular", size: 40))
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        Spacer()
                        Text("Pontuação:")
                            .font(.custom("JockeyOne-Regular", size: 35))
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        HStack {
                            Text("04")
                                .font(.custom("JockeyOne-Regular", size: 35))
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                            Image("Banana")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                        }
                        ZStack {
                            Rectangle()
                                .fill(Marrom)

                            Rectangle()
                                    .strokeBorder(Color(.black), lineWidth: 2)
                        }
                        .compositingGroup()
                        .frame(width: 214, height: 43)
                        .shadow(radius:4, x:0, y:4)
                            .padding(.bottom, 10)
                            .overlay(
                                Text("Voltar ao início")
                                    .font(.custom("JockeyOne-Regular", size:22))
                                    .foregroundColor(.white)
                                    .padding(.bottom))
                            .padding(.bottom, 10)
                        Image("Elef")
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 10)
                            .padding(.bottom, 20)
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
    
    struct Lose_Previews: PreviewProvider {
        static var previews: some View {
            Lose()
        }
    }
}
