//
//  LandmarkList.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/19/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      
        NavigationStack {
            List(landmarks) { landmark in
                
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12 Pro", "iPhone 14 Pro Max"], id: \.self) { deviceName in
                 LandmarkList()
                     .previewDevice(PreviewDevice(rawValue: deviceName))
                     .previewDisplayName(deviceName)
             }
    }
}
