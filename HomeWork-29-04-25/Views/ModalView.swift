//
//  ModalView.swift
//  HomeWork-29-04-25
//
//  Created by Aleksandr Zhazhoyan on 06.05.2025.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Это модальный вид")
                .font(.title)
            
            Button("Закрыть") {
                dismiss()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
    }
}

#Preview {
    ModalView()
}
