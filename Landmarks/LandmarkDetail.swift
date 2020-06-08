//
//  ContentView.swift
//  Landmarks
//
//  Created by Sunimal Herath on 8/6/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            // Map View
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            // Circle Image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            // Title, subtitle stack
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }.padding()
            
            // Push everything up
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
