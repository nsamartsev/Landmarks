//
//  UserData.swift
//  Landmarks
//
//  Created by Nathan Algren on 01.01.2020.
//  Copyright © 2020 Nikita Samartsev. All rights reserved.
//

import Foundation
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
