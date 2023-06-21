//
//  ContentView.swift
//  Bowling Scores
//
//  Created by Elias on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var series: String = ""
    @State var average: String = ""
    @State var high: String = ""
    @State var average3: Int = 0
    @State var averageCount: Int = 0
    @State var gamein1: String = ""
    @State var gamein2: String = ""
    @State var gamein3: String = ""
    
var body: some View {
        VStack{
            VStack {
                Text("Bowling Scores")
                    .font(.title)
                    .foregroundColor(Color.red)
                
                HStack{
                    VStack{
                        Text("Game 1")
                            .padding(.trailing, 140.0)
                            .frame(width: 200.0, height: 20.0)
                            .border(Color.black, width: 1)
                            .background(Color.yellow)
                            .accessibilityLabel("game1label")
                            .accessibilityValue(gamein1)
                        Text("Game 2")
                            .padding(.trailing, 140.0)
                            .frame(width: 200.0, height: 20.0)
                            .border(Color.black, width: 1)
                            .background(Color.yellow)
                            .accessibilityLabel("game2label")
                            .accessibilityValue(gamein2)
                        Text("Game 3")
                            .padding(.trailing, 140.0)
                            .frame(width: 200.0, height: 20.0)
                            .border(Color.black, width: 1)
                            .background(Color.yellow)
                            .accessibilityLabel("game3label")
                            .accessibilityValue(gamein3)
                    }
                    VStack{
                        TextField("0", text: $gamein1)
                            .background(Color.red)
                            .multilineTextAlignment(.trailing)
                            .accessibilityLabel("game1")
                        TextField("0", text: $gamein2)
                            .background(Color.red)
                            .multilineTextAlignment(.trailing)
                            .accessibilityLabel("game2")
                        TextField("0", text: $gamein3)
                            .background(Color.red)
                            .multilineTextAlignment(.trailing)
                            .accessibilityLabel("game3")
                    }
                }
                .frame(maxWidth: .infinity)
                Button(action: {
                    let series1 = Int(gamein1)! + Int(gamein2)! + Int(gamein3)!
                    series = String(series1)
                    
                    if gamein1.isEmpty && gamein2.isEmpty && gamein3.isEmpty{
                        average = "0"
                    }
                    else{
                        average3 = 0
                        var averageCount = 0
                        
                        if Int(gamein1) != 0{
                            average3 += Int(gamein1)!
                            averageCount += 1
                        }
                        if Int(gamein2) != 0{
                            average3 += Int(gamein2)!
                            averageCount += 1
                        }
                        if Int(gamein3) != 0{
                            average3 += Int(gamein3)!
                            averageCount += 1
                        }
                        if averageCount > 0 {
                            average3 = average3 / averageCount   
                        }
                       
                        average = String(average3)
                    }
                    let maxnum = max(Int(gamein1)! , Int(gamein2)!, Int(gamein3)!)
                    high = String(maxnum)
                    
                    
                }){
                    Text("Calculate")
                        .frame(width: 380, height: 20.0)
                        .border(Color.black, width: 1)
                        .background(Color.green)
                        .accessibilityLabel("calculate")
                }
                HStack{
                    VStack{
                        Text("Series")
                            .padding(.trailing, 140.0)
                            .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0)
                            .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                            .background(Color.yellow)
                            .accessibilityLabel("serieslabel")
                            .accessibilityValue(series)
                        Text("Average")
                            .padding(.trailing, 130.0)
                            .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0)
                            .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                            .background(Color.yellow)
                            .accessibilityLabel("averagelabel")
                            .accessibilityValue(average)
                        Text("High")
                            .padding(.trailing, 150.0)
                            .frame(width: 200.0, height: 20)
                            .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                            .background(Color.yellow)
                            .accessibilityLabel("highlabel")
                            .accessibilityValue(high)
                    }
                    VStack{
                        Text(series)
                                .frame(width: 180.0, height: 20)
                                .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                                .background(Color.blue)
                                .accessibilityLabel("series")
                            Text(average)
                                .frame(width: 180.0, height: 20)
                                .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                                .background(Color.blue)
                                .accessibilityLabel("average")
                            Text(high)
                                .frame(width: 180.0, height: 20)
                                .border(Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                                .background(Color.blue)
                            .accessibilityLabel("high")
                        
                    
                        
                    }
                }
                .padding(.leading, 0.0)
            }
            
            Spacer()
        }
        .frame(maxWidth: 380)
        
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
