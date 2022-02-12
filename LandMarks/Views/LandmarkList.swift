//
//  LandmarkList.swift
//  LandMarks
//
//  Created by 강유진 on 2022/02/12.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //if not Identifiable -> add id: \.id
        NavigationView {
            List(landmarks) {
                landmark in
                NavigationLink {
                    LanmarkDetail(landmark: landmark)
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
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    LandmarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }
    }
}
