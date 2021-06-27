//
//  SideBarView.swift
//  EcommerceSample
//
//  Created by Naveen Kumar on 12/06/21.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        ZStack {
            Color("AppThemeColor")
                .ignoresSafeArea()
            HStack {
                VStack (alignment:.leading){
                    HStack() {
                        Image("dp").renderingMode(.original).resizable().scaledToFit().frame(width: 42, height: 42, alignment:.center)
                        VStack(alignment:.leading,spacing:3){
                            Text("Meng To").font(.headline).fontWeight(.bold)
                            
                            Text("License ends on 21 Jan").font(.footnote)
                        }
                        
                    }.padding(.top,20)
                    HStack(alignment:.center) {
                        Image("home").frame(width: 42, height: 42, alignment: .center).background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.6823529412, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.462745098, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(10)
                        Text("Home").fontWeight(.bold)
                    }.padding(.top,30)
                    HStack {
                        Image("Courses").frame(width: 42, height: 42, alignment: .center).background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9803921569, green: 0.4901960784, blue: 0.4588235294, alpha: 1)), Color(#colorLiteral(red: 0.7607843137, green: 0.2392156863, blue: 0.3803921569, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(10)
                        Text("Courses").fontWeight(.bold)
                    }.padding(.top,30)
                    HStack {
                        Image("Billing").frame(width: 42, height: 42, alignment: .center).background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9803921569, green: 0.8392156863, blue: 0.2901960784, alpha: 1)), Color(#colorLiteral(red: 0.9176470588, green: 0.5333333333, blue: 0.05882352941, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(10)
                        Text("Billing").fontWeight(.bold)
                    }.padding(.top,30)
                    HStack {
                        Image("Settings").frame(width: 42, height: 42, alignment: .center).background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3058823529, green: 0.3843137255, blue: 0.8, alpha: 1)), Color(#colorLiteral(red: 0.1254901961, green: 0.1647058824, blue: 0.4705882353, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(10)
                        Text("Settings").fontWeight(.bold)
                    }.padding(.top,30)
                    Spacer()
                }.padding().padding(.leading,50)
                Spacer()
            }
        }
        
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
