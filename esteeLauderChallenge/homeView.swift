//
//  homeView.swift
//  esteeLauderChallenge
//
//  Created by Kylie Nguyen on 6/26/23.
//

import SwiftUI
import AVKit

struct homeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                
                Image("3")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                
                ScrollView{
                    Image("header")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .position(x: 200, y:70)
                    
                    Text("The Power of Nutritious")
                        .font(.custom("AkzidenzGroteskBQ-Bold", size: 30))
                        .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                        .padding()
                    
                    VStack{
                        VStack{
                            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "esteeVid1", withExtension: "mp4")!))
                                .frame(width: 300, height: 300)
                                .position(x:180, y:150)
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .opacity(0.5)
                            .frame(width: 340, height: 340)     .position(x:195, y:165))
                        
                        Text("Revitalized. Vibrant. Nutritious. \n Choose the best for yourself.")
                            .font(.title3)
                            .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                            .padding()
                        
                        HStack{
                            Image("estee1")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                            Image("estee2")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                        } .padding()
                        
                        NavigationLink(destination: learnMoreView()){
                            Text("Learn More About Nutritous")
                                .font(.custom("Optima", size: 25))
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                                .multilineTextAlignment(.center)
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .opacity(0.5))
                                .padding()
                        }
                        
                        Text("Our Products")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 30))
                            .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                            .padding()
                        
                        VStack{
                            HStack{
                                Image("estee3")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:150, height: 150)
                                Image("estee4")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:150, height: 150)
                            }
                            HStack{
                                Image("estee5")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:150, height: 150)
                                Image("estee6")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:150, height: 150)
                            }
                   
                        }   .padding()
                            .background(Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .opacity(0.5)
                                .frame(width: 340, height: 340)
                                .position(x:170, y:170)
                            )
                        
                        NavigationLink(destination: productsView()){
                            Text("Shop All")
                                .font(.custom("Optima", size: 25))
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                                .multilineTextAlignment(.center)
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .opacity(0.5))
                                .padding()
                        }
                        
                        Image("blankSmall")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                        
                        Image("blankSmall")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                    }
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
        } 
    }
    
    struct homeView_Previews: PreviewProvider {
        static var previews: some View {
            homeView()
        }
    }
}
