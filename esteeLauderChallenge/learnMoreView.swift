//
//  learnMoreView.swift
//  esteeLauderChallenge
//
//  Created by Kylie Nguyen on 6/30/23.
//

import SwiftUI
import AVKit

struct learnMoreView: View {
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
                    
                    VStack{
                            
                        Text("The Power of Nutritious")
                            .font(.custom("AkzidenzGroteskBQ-Bold", size: 30))
                            .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                            .padding()
                        
                        Group{
                            Text("NUTRIGENOMICS")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .opacity(0.5)
                                    .frame(width: 340, height: 360)
                                    .position(x:130, y:180))
                            
                            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "esteeVid2", withExtension: "mp4")!))
                                .frame(width: 340, height: 195)
                      
                            
                        }
                            .background(Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .opacity(0.5))
              
                            Group{
                                Text("A complex blend of nutrient-rich ingredients and skin science...")
                                    .font(.custom("Optima", size: 20))
                                    .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                                    .multilineTextAlignment(.center)
                                    .padding()
                                
                                Image("blankSmall")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                            }
                        
                        
                        Group{
                            Text("SKIN-LOVING, FUTURE-LOVING")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                                .multilineTextAlignment(.center)
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .opacity(0.5)
                                    .frame(width: 340, height: 450)
                                    .position(x:125, y:224))
                            
                            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "esteeVid3", withExtension: "mp4")!))
                                .frame(width: 340, height: 195)
                      
                            
                        }
                            .background(Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .opacity(0.5))
                       
       
                        Text("\nNot only are our ingredients naturally\n & responsibly sourced- they're also \nformulated to allow your skin to find a happy place!")
                            .font(.custom("Optima", size: 18))
                            .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        Image("blankSmall")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fill)
                        
                        
                        Group{
                            Text("PEAK PERFORMANCE")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .opacity(0.5)
                                    .frame(width: 340, height: 415)
                                    .position(x:155, y:207))
                            
                            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "esteevid4", withExtension: "mp4")!))
                                .frame(width: 340, height: 195)
                      
                            
                        }
                            .background(Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .opacity(0.5))
                       
                        
                        Text("While fighting oil and protecting\n your skin barrier, our Nutritious \nline also help you flaunt your \nnatural vibrancy.")
                            .font(.custom("Optima", size: 18))
                            .foregroundColor(Color(red: 0.624, green: 0.062, blue: 0.246))
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Group{
                            NavigationLink(destination: homeView()){
                                Text("Back to Home")
                                    .font(.title2)
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
                        }
                      
                        
                        Group{
                            Image("blankSmall")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                            
                            Image("blankSmall")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                        }
                       
                
                    }
                }
            } 
        } .navigationBarHidden(true)
    }
}
            
struct learnMoreView_Previews: PreviewProvider {
    static var previews: some View {
        learnMoreView()
    }
}
