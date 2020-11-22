//
//  Tab.swift
//  swiftui-practice
//
//  Created by lova on 2020/11/7.
//

import SwiftUI

struct Tab<Content: View>: View {
    let title: String
    let nav: Bool
    let children: Content

    var body: some View {
        if self.nav {
            NavigationView {
                VStack {
                    Divider()

                    children

                    Spacer()
                }
                .navigationBarTitle(title, displayMode: .large)
            }
            .tabItem {
                Text(title)
            }
        } else {
            children
                .tabItem {
                    Text(title)
                }
        }
    }

    init(title: String, nav: Bool = true, @ViewBuilder content: () -> Content) {
        self.title = title
        self.nav = nav
        self.children = content()
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            Tab(title: "gg", nav: false) {
                Text("hihi")
            }

            Tab(title: "22") {
                Text("hihi")
            }
        }
    }
}
