//
//  LandmarkList.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/19/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
