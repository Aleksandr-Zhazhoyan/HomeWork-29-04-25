//
//  DetailView.swift
//  HomeWork-29-04-25
//
//  Created by Aleksandr Zhazhoyan on 06.05.2025.
//

import SwiftUI

struct DetailView: View {
    let item: String
    
    var body: some View {
        VStack {
            Text("Детали для \(item)")
                .font(.title)
            Text("Это подробная информация о \(item)")
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
        .navigationTitle(item)
    }
}
