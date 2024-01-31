//
//  ContentView.swift
//  ProductApp
//
//  Created by Alexander Suprun on 31.01.2024.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        HStack {
            TabView {
                MainView()
                .tabItem {
                        Image(systemName: "arrowtriangle.up.circle")
                        Text("Главная")
                    }
                Text("Вторая вкладка")
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Каталог")
                    }
                Text("3 вкладка")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                Text("4 вкладка")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
            }
            .accentColor(Colors.main)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

