//
//  Game.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct Game: View {
    let title = "遊戲"

    var body: some View {
        ScrollView(.vertical) {
            ScrollView(.horizontal) {
                LazyHStack {
                    Card()
                    Card()
                    Card()
                    Card()
                }.padding()
            }
        }
    }
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}
