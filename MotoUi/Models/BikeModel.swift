//
//  BikeModel.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 9/10/24.
//

import Foundation

struct Bike: Identifiable {
    let id: Int
    let image: String
    var imgIconOn: Bool
    let imgWallpaper: String
<<<<<<< HEAD

}
=======
    let audioName: String

}

struct Moto: Identifiable {
    var id = UUID()
    let model: String
    //let description: String
    //let image: String
    //let priceAvarage: Double
    let marca: String //Marca
    //let type: typeBike
    let yearIntro: Int
    let yearEnd: Int?
    let numCC: Int
    let type: typeBike
    //let numCilindro: Int
}

struct Marca: Identifiable {
    var id = UUID()
    let name: String
    let description: String
}

enum typeBike: String, CaseIterable {
    case naked
    case sport
    case touring
    case supersport
    case supernaked
    case cross
    case special
    case nothing
}
>>>>>>> f735f98 (ListView pre test)
