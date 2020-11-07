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
            TodayView()

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

