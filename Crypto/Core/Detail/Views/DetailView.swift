//
//  DetailView.swift
//  Crypto
//
//  Created by Summer Crow on 2022-05-16.
//

import SwiftUI


struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}
struct DetailView: View {
    
    @StateObject private var vm: DetailViewModel
    @State private var showFullDescription: Bool = false
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())]
    private let spacing: CGFloat = 30
    
    init(coin: CoinModel) {
  
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("initializing Detail view for \(coin)")
    }
    
    var body: some View {
       
        ScrollView{
            VStack {
                ChartView(coin: vm.coin)
                    .padding(.vertical)
                VStack(spacing: 20){
                    
                    overviewTitle
                   
                    Divider()
                    
                    DescriptionSection
                  
                    overviewGrid
                
                    additionalDetailsTitle
                    
                    Divider()
                    additionalDetailsGrid
                    
                    websiteSection
                
                }
                .padding()
            }
            
        }
        .background(Color.theme.background
            .ignoresSafeArea())
        .navigationTitle(vm.coin.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                navigationBarTrailingItem
                
            }
        }
            
        }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(coin: dev.coin)

        }
    }
}

extension DetailView {
    
    private var navigationBarTrailingItem: some View {
        HStack {
            Text(vm.coin.symbol.uppercased())
                .font(.headline)
            .foregroundColor(Color.theme.secondaryText)
            CoinImageView(coin: vm.coin)
                .frame(width: 25, height: 25)
        }
    }
    private var overviewTitle: some View {
    Text("Overview")
        .font(.title)
        .bold()
        .foregroundColor(Color.theme.accent)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    

    
    private var additionalDetailsTitle: some View {
    Text("Additional Details")
        .font(.title)
        .bold()
        .foregroundColor(Color.theme.accent)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var DescriptionSection: some View {
        ZStack {
            if let coinDescription = vm.coinDescription,
                !coinDescription.isEmpty {
                VStack(alignment: .leading) {
                Text(coinDescription)
                        .lineLimit(showFullDescription ? .max : 3)
                    .font(.callout)
                    .foregroundColor(Color.theme.secondaryText)
                    Button {
                        withAnimation(.easeInOut) {
                            showFullDescription.toggle()
                        }
                    } label: {
                        Text(showFullDescription ? "Show less" : "Read more..")
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(.vertical,4)
                    }
                    .tint(.blue)

                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
    private var overviewGrid: some View {
        
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: spacing,
            pinnedViews: []) {
                ForEach(vm.overviewStatics) { stat in
                    StatisticView(stat: stat)
                }
            }
    }
    
    private var additionalDetailsGrid: some View {
    LazyVGrid(
        columns: columns,
        alignment: .leading,
        spacing: spacing,
        pinnedViews: []) {
            ForEach(vm.additionalStatics) { stat in
                StatisticView(stat: stat)
            }
        }
    }
    
    private var websiteSection: some View {
        
        VStack(alignment: .leading, spacing: 20){
            if let websiteString = vm.websiteURL,
               let url = URL(string: websiteString) {
                Link("Website", destination: url)
            }
            
            if let redditString = vm.redditURL,
               let url = URL(string: redditString) {
                Link("Reddit", destination: url)
            }
        }
        .tint(.blue)
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.headline)
    }
}
