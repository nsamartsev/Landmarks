//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Nathan Algren on 31.12.2019.
//  Copyright © 2019 Nikita Samartsev. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetails(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                       .previewDevice(PreviewDevice(rawValue: deviceName))
        }
       
    }
}
