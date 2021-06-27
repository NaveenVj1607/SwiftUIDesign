//
//  ContentView.swift
//  EcommerceSample
//
//  Created by Naveen Kumar on 11/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var isSideBarShowing = false
    var body: some View {
        ZStack(alignment:.leading) {
            Color("AppThemeColor")
                .ignoresSafeArea()
                .overlay(
                    ScrollView(.vertical,showsIndicators:false){
                        VStack(alignment: .leading) {
                            HStack {
                                Image("menu").frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.white).cornerRadius(10).shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 5, x: 2, y: 2).onTapGesture {
                                    withAnimation(.spring()){
                                        isSideBarShowing = true
                                    }
                                }
                                Text("BumbDoodle").padding()
                                Spacer()
                                Image(systemName: "bell.fill")
                                Image("dp").renderingMode(.original).resizable().scaledToFit().frame(width: 36, height: 36, alignment:.center)
                            }.padding()//HSTACK:
                            
                            
                            Text("Recents").font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.leading,15).padding(.bottom,3)
                            Text("23 courses, more coming").font(.headline).padding(.leading,15).foregroundColor(Color("headlineColor"))
                            ScrollView(.horizontal,showsIndicators:false){
                                            HStack(spacing:10){
                                                ForEach(0..<3){
                                                    index in
                                                    GeometryReader { geometry in
                                                        
                                                        CourseCardView().rotation3DEffect(Angle(degrees: Double(geometry.frame(in:.global).minX - 60) / -20), axis: (x: 0, y: 10, z: 0))
                                                    }.frame(width: 240, height: 260)
                                                }
                                            }.padding()
                                        }.frame(height:270)
                            Text("Explore").font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.leading,15).padding(.top,10)
                            
                            ScrollView(.horizontal,showsIndicators:false){
                                            HStack(spacing:10){
                                                ForEach(0..<3){
                                                    index in
                                                    GeometryReader {
                                                        geometry in
                                                        TechnologyCardView().rotation3DEffect(Angle(degrees: Double(geometry.frame(in:.global).minX) / 20), axis: (x: 10, y: 10, z: 0))
                                                    }.frame(width:273.28, height: 117.49)
                                             
                                                    Spacer(minLength: 25)
                                                }
                                            }.padding()
                                        }.frame(height:200)
                            Spacer()
                            
                        }//VSTACK:
                    }
            )//OVERLAY:
            
            if isSideBarShowing {
                Color.black.opacity(0.3).ignoresSafeArea().onTapGesture {
                    withAnimation(.easeInOut){
                        isSideBarShowing = false
                    }
                }
            }else {
                EmptyView()
            }
            SideBarView().cornerRadius(40).offset(x: isSideBarShowing ? -40 : -400, y: 10).transition(.slide)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct RoundedCorners: Shape {
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let w = rect.size.width
        let h = rect.size.height

        // Make sure we do not exceed the size of the rectangle
        let tr = min(min(self.tr, h/2), w/2)
        let tl = min(min(self.tl, h/2), w/2)
        let bl = min(min(self.bl, h/2), w/2)
        let br = min(min(self.br, h/2), w/2)

        path.move(to: CGPoint(x: w / 2.0, y: 0))
        path.addLine(to: CGPoint(x: w - tr, y: 0))
        path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr,
                    startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)

        path.addLine(to: CGPoint(x: w, y: h - br))
        path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br,
                    startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)

        path.addLine(to: CGPoint(x: bl, y: h))
        path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl,
                    startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)

        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl,
                    startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)

        return path
    }
}
