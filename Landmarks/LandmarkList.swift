//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Nathan Algren on 31.12.2019.
//  Copyright © 2019 Nikita Samartsev. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {

            List {
                HStack {
                    Toggle(isOn: $userData.showFavoritesOnly) {
                        Text("Favorites only")
                    }
                }

                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone 8", "iPhone XS Max"], id: \.self) { deviceName in
//            LandmarkList()
//                       .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
                //.previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        }
    }
}
