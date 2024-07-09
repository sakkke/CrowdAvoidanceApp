//
//  ContentView.swift
//  CrowdAvoidanceApp
//
//  Created by A202 on 2024/07/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Form {
                Section(header: Text("発車駅情報")) {
                    HStack {
                        Circle()
                            .fill(Color.orange)
                            .frame(width: 20, height: 20)
                        VStack(alignment: .leading) {
                            Text("湘南新宿ライン")
                                .font(.headline)
                            Text("路線")
                                .font(.subheadline)
                        }
                    }
                    HStack {
                        Text("方向")
                        Spacer()
                        Text("上り")
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("藤沢駅")
                        Spacer()
                        Text("7:05")
                            .foregroundColor(.gray)
                    }
                }
                Section(header: Text("混雑情報")) {
                    CongestionRow(color: .cyan, carNumber: "1号車", status: "とても快適")
                    CongestionRow(color: .green, carNumber: "2号車", status: "快適")
                    CongestionRow(color: .yellow, carNumber: "3号車", status: "混雑")
                    CongestionRow(color: .orange, carNumber: "4号車", status: "とても混雑")
                    CongestionRow(color: .red, carNumber: "5号車", status: "満員")
                    CongestionRow(color: .orange, carNumber: "6号車", status: "とても混雑")
                    CongestionRow(color: .cyan, carNumber: "7号車", status: "とても快適")
                    CongestionRow(color: .green, carNumber: "8号車", status: "快適")
                }
            }
        }
        .padding()
    }
}

struct CongestionRow: View {
    var color: Color
    var carNumber: String
    var status: String
    
    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 20, height: 20)
            VStack(alignment: .leading) {
                Text(carNumber)
                    .font(.headline)
                Text(status)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    ContentView()
}
