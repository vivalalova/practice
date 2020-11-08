//
//  StoreView.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/8.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
        TabView {
            TodayView()

            Tab(title: "遊戲") {
                Game()
            }
        }
    }
}


struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}