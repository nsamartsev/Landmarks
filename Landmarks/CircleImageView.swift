//
//  CircleImage.swift
//  Landmarks
//
//  Created by Nathan Algren on 29.12.2019.
//  Copyright © 2019 Nikita Samartsev. All rights reserved.
//

import SwiftUI

struct CircleImageView: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
