//
//  CircleImage.swift
//  LandMarks
//
//  Created by 강유진 on 2022/02/09.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{Circle().stroke(.white, lineWidth: 4)}
            .shadow(radius: 7)
    }
        
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Turtlerock"))
    }
}
