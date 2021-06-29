//
//  ListViewComponent.swift
//  SwiftUIDesign
//
//  Created by Naveen Kumar on 29/06/21.
//

import SwiftUI

struct ListViewComponent: View {
    @ObservedObject var listStore = ListModelObject()
    var body: some View {
        NavigationView {
            List {
                ForEach(listStore.fruitData){ item in
                    HStack {
                        HStack {
                            Image(item.image).resizable().scaledToFit().frame(width: 70, height: 70, alignment: .center)
                        }
                        .frame(width: 120, height: 120, alignment: .center)
                        .background(LinearGradient(gradient: Gradient(colors: item.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(30).padding(.vertical,10)
                        
                        VStack(alignment:.leading) {
                            Text(item.title).font(.title).fontWeight(.bold).padding(.bottom,3)
                            Text(item.headline)
                        }
                    }
                    
                }
                .onDelete{ index in
                    self.listStore.fruitData.remove(at: index.first!)
                }
                .onMove{ (source:IndexSet,destination:Int) in
                    self.listStore.fruitData.move(fromOffsets: source, toOffset: destination)
                    
                }
            }
            .navigationBarTitle(Text("List View"))
            .navigationBarItems(trailing: EditButton())
        }
    
    }
}

struct ListViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        ListViewComponent()
    }
}
