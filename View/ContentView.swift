//
//  ContentView.swift
//  View
//
//  Created by 小浦雄一朗 on 2021/03/05.
//

import SwiftUI
extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical){
            ForEach(0..<20){ index in
                HStack {
                    Spacer()
                    custom(text: "a")
                    Spacer().frame(width:20)
                    custom(text: "a")
                    Spacer()
                }
            }
            
        }
    }
}

struct custom:View{
    var text:String
    var color:Color = Color.random
    var body: some View {
            Text(text)
                .font(.custom("Emoji", size: 50))
                .padding(50)
                .background(color)
                .cornerRadius(10)
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
