//
//  MainTabView.swift
//  HomeWork-29-04-25
//
//  Created by Aleksandr Zhazhoyan on 06.05.2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    @State private var selectedItem: String? = nil
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab, selectedItem: $selectedItem)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            NavigationView {
                ListView(selectedItem: $selectedItem)
            }
            .tabItem {
                Label("List", systemImage: "list.bullet")
            }
            .tag(1)
            
            ModalTabView()
                .tabItem {
                    Label("Modal", systemImage: "square.and.arrow.up")
                }
                .tag(2)
        }
    }
}

#Preview {
    MainTabView()
}
