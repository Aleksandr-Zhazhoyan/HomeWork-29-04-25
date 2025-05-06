//
//  HomeView.swift
//  HomeWork-29-04-25
//
//  Created by Aleksandr Zhazhoyan on 06.05.2025.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var selectedTab: Int
    @Binding var selectedItem: String?
    
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Начальный экран")
                .font(.largeTitle)
            
            Button("Перейти на вкладку List") {
                selectedTab = 1
                selectedItem = "Item 3"
            }
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
    }
}

