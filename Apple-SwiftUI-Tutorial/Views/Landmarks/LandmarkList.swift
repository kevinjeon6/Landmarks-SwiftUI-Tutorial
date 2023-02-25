//
//  LandmarkList.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/19/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    // MARK: Computed filter property
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    
    var body: some View {
      
        NavigationStack {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    
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
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12 Pro", "iPhone 14 Pro Max"], id: \.self) { deviceName in
                 LandmarkList()
                     .previewDevice(PreviewDevice(rawValue: deviceName))
                     .previewDisplayName(deviceName)
                     .environmentObject(ModelData())
             }
    }
}
