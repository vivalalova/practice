//
//  Tab.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct Tab<Content: View>: View {
    let title: String
    let children: Content

    var body: some View {
        NavigationView {
            VStack {
                Divider()

                children
                    .navigationBarTitle(title, displayMode: .large)

                Spacer()
            }
        }
        .tabItem {
            Text(title)
        }
    }

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.children = content()
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            Tab(title: "gg") {
                Text("hihi")
            }

            Tab(title: "22") {
                Text("hihi")
            }
        }
    }
}
