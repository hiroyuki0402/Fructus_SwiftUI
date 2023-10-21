//
//  HomeView.swift
//  Fructus
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import SwiftUI

struct HomeView: View {
    var viewModel = FruitsViewModel()

    var body: some View {
        NavigationView {
                List {
                    ForEach(viewModel.fruitsDatas) { fruits in

                        NavigationLink(destination: DetailView(fruitsData: fruits)) {
                            FruitRowView(fruitsData: fruits)
                                .frame(height: 70)
                                .padding(.horizontal, 4)
                                .padding(.vertical, 4)

                        }
                        .listRowSeparator(/*@START_MENU_TOKEN@*/.visible/*@END_MENU_TOKEN@*/)
                    }
                }

                .navigationTitle("フルーツ")
        } //: ナビゲーション
        .listStyle(.plain)
    }
}

#Preview {
    HomeView()
}

