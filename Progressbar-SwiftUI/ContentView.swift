//
//  ContentView.swift
//  Progressbar-SwiftUI
//
//  Created by Mert Ala on 16.11.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var percent : CGFloat = 0
    
    var body: some View {
        VStack{
            Loeder(percent:percent)
                
                    VStack{
                       
                        Button(action: {
                            self.percent = 40
                            
                        }) {
                            Text("%40")
                        }
                           .padding(EdgeInsets.init(top: 10, leading: 20, bottom: 0, trailing: 0))
                        Button(action: {
                             self.percent = 60
                        
                        }) {
                            Text("%60")
                        }
                          .padding(EdgeInsets.init(top: 10, leading: 20, bottom: 0, trailing: 0))
                        Button(action: {
                             self.percent = 80
                        
                        }) {
                            Text("%80")
                        }
                            .padding(EdgeInsets.init(top: 10, leading: 20, bottom: 0, trailing: 0))
                        Button(action: {
                             self.percent = 100
                                               
                        }) {
                            Text("%100")
                        }
                            .padding(EdgeInsets.init(top: 10, leading: 20, bottom: 0, trailing: 0))
                        Button(action: {
                             self.percent = 0
                                                                      
                        }) {
                            Text("sıfırla")
                        }
                            .padding(EdgeInsets.init(top: 10, leading: 20, bottom: 0, trailing: 0))
                   
                 
                    }
                }
            }
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Loeder: View {
    
    var percent : CGFloat = 0
    var colors : [Color] = [.red,.orange,.yellow,.green,.purple,.blue]
    
    var body : some View {
        
        ZStack {
            Circle()
            .fill(Color.white)
                .frame(width: 120, height: 120)
     
            .overlay (
                Circle()
                    .trim(from: 0, to: percent * 0.01)
                    .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                    .fill(  AngularGradient(gradient: .init(colors: colors), center: .center, startAngle: .zero, endAngle: .init(degrees: 360)))
            ).animation(.spring(response: 1.0, dampingFraction: 1.0, blendDuration: 1.0))
            Text(String(format: "%.1f", percent)+" %").font(.system(size:20)).fontWeight(.heavy)
        }
    }
}




