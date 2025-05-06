//
//  ListView.swift
//  HomeWork-29-04-25
//
//  Created by Aleksandr Zhazhoyan on 06.05.2025.
//

import SwiftUI

struct ListView: View {
    @Binding var selectedItem: String?
    
    let items = ["item 1", "item 2", "item 3", "item 4", "item 5", "item 6", "item 7", "item 8", "item 9", "item 10", "item 11", "item 12"]
    
    
    
    var body: some View {
        List(items, id: \.self) { item in
            NavigationLink(
                destination: DetailView(item: item),
                tag: item,
                selection: $selectedItem
            ) {
                Text(item)
            }
        }
        .navigationTitle("Список предметов")
        .onChange(of: selectedItem) { newValue in
            if newValue != nil {
                print("Выбранный элемент: \(newValue!)")
            }
        }
    }
}

