//
//  CourseCardView.swift
//  EcommerceSample
//
//  Created by Naveen Kumar on 12/06/21.
//

import SwiftUI

struct CourseCardView: View {
    var body: some View {
       
        ZStack(alignment:.top) {
            VStack(alignment:.leading) {
                Text("12 Sections").font(.footnote).foregroundColor(.white).padding(.leading,15).padding(.top,12)
                Text("Flutter for Designer").font(.title).fontWeight(.bold).foregroundColor(.white).multilineTextAlignment(.center).padding(.leading,15).lineLimit(4)
                HStack {
                    Spacer()
                    Image("card1").renderingMode(.original).resizable().scaledToFit().frame(width: 183, height: 133, alignment: .trailing)
                }
            }.frame(width:240, height: 240, alignment: .bottom).background(LinearGradient(gradient: Gradient(colors: [Color("cardGradient1Start"),Color("cardGradient1End")]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(41)
            
            HStack {
                Spacer()
                Image("Logo").frame(width: 60, height: 60, alignment: .center).background(Color.white).cornerRadius(20).padding(.horizontal,20).padding(.vertical,20)
            }.offset(x: 0, y: -50)
        }.frame(width:240, height: 260, alignment: .bottom)
        
    }
}

struct CourseCardView_Previews: PreviewProvider {
    static var previews: some View {
        CourseCardView().previewLayout(.fixed(width: 240, height: 260)).fixedSize()
    }
}

