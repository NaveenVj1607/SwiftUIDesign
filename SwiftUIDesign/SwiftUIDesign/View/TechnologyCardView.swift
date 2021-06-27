//
//  TechnologyCardView.swift
//  EcommerceSample
//
//  Created by Naveen Kumar on 12/06/21.
//

import SwiftUI

struct TechnologyCardView: View {
    var body: some View {
            VStack(alignment:.leading) {
                Spacer()
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("22 Sections").font(.footnote).foregroundColor(.white).padding(.leading,20)
                            Text("Build an App with SwiftUI").font(.body).fontWeight(.bold).foregroundColor(.white).multilineTextAlignment(.center).padding(.leading,20).lineLimit(4)
                        }
                        Spacer()
                        Image("illustration-4").renderingMode(.original).resizable().scaledToFit()
                    }
               
            }.frame(width:273.28, height: 117.49, alignment: .bottom).background(LinearGradient(gradient: Gradient(colors: [Color("technologyGradientStart"),Color("technologyGradientEnd")]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(20)

    }
}

struct TechnologyCardView_Previews: PreviewProvider {
    static var previews: some View {
        TechnologyCardView().previewLayout(.fixed(width:300, height: 300)).fixedSize()
    }
}
