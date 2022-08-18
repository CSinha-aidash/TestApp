//
//  ContentView.swift
//  TestApp
//
//  Created by Chirag  Sinha on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var Pcards = "card5"
    @State var CpuCard = "card9"
    @State var Pscore = 0
    @State var CPUScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack() {
                    Spacer()
                    Image(Pcards)
                    Spacer()
                    Image(CpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    let Pindex = Int.random(in: 2..<15)
                    let Cindex = Int.random(in: 2..<15)
                    Pcards = "card" + String(Pindex)
                    CpuCard = "card" + String(Cindex)
                    if Pindex > Cindex {
                        Pscore += 1
                    }else {
                        CPUScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                    
                    HStack() {
                        
                        Spacer()
                        
                        VStack() {
                            Text("Player 1")
                                .font(.largeTitle)
                                .foregroundColor(Color.blue)
                                .padding(.bottom, 10.0)
                            Text(String(Pscore)).font(.largeTitle).foregroundColor(Color.white)
                        }
                        
                        Spacer()
                        
                        VStack() {
                            Text("Computer").font(.largeTitle).foregroundColor(Color.white).padding(.bottom, 10.0)
                            Text(String(CPUScore)).font(.largeTitle).foregroundColor(Color.white)
                        }
                        
                        Spacer()
                    }
                    
                    Spacer()
            }
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
