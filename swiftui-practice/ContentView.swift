//
//  ContentView.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(title: "Today") {
                ScrollView {
                    LazyVStack {
                        Card().padding(2).clipped().shadow(radius: 3)
                        Card().padding(2).clipped().shadow(radius: 3)
                        Card().padding(2).clipped().shadow(radius: 3)
                    }
                }
            }

            Tab(title: "遊戲") {
                Game()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
