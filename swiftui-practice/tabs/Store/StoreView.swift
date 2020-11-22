//
//  StoreView.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/8.
//

import SwiftUI

struct StoreView: View {
    @Namespace var animation
    @StateObject var detailObject = DetailViewModel()

    var body: some View {
        TabView {
            TodayView(animation: animation)
                .environmentObject(detailObject)

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
