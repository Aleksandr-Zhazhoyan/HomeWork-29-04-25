//
//  ModalTabView.swift
//  HomeWork-29-04-25
//
//  Created by Aleksandr Zhazhoyan on 06.05.2025.
//

import SwiftUI

struct ModalTabView: View {
    
    @State private var showModal = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Модальный экран")
                .font(.largeTitle)
            
            Button("Показать модальный режим") {
                showModal = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
        .sheet(isPresented: $showModal) {
            ModalView()
        }
    }
}

#Preview {
    ModalTabView()
}
