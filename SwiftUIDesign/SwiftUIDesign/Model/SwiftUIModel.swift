//
//  SwiftUIModel.swift
//  SwiftUIDesign
//
//  Created by Naveen Kumar on 29/06/21.
//

import Foundation
import SwiftUI

struct FruitModel:Identifiable{
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors: [Color]
    var description:String
    var nutrition:[String]
    
}


class ListModelObject:ObservableObject {
    @Published var fruitData:[FruitModel] = fruitsData
}
