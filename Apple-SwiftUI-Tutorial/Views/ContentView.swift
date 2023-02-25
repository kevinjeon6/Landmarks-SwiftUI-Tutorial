//
//  ContentView.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
