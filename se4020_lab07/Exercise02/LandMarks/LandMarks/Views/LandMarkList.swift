//
//  LandMarkList.swift
//  LandMarks
//
//  Created by Sajani Jayasinghe on 2023-05-10.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView {
            List (landmarks, id: \.id) { landmark in
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

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPad (10th generation)", "iPhone 14 Pro"], id: \.self) { deviceName in
            LandMarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)

        }
    }
}
