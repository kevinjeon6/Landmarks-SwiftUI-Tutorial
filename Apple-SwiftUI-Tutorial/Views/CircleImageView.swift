//
//  CircleImageView.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/15/23.
//

import SwiftUI

struct CircleImageView: View {
    
    //variable image of type Image
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
