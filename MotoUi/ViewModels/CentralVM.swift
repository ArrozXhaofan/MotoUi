//
//  CentralVM.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 14/10/24.
//

import Foundation

final class CentralVM: ObservableObject {
    
    @Published var allBikes: [Moto] = []
    
    init() {
        allBikes = [
            Moto(model: "YFZR 6", marca: "Yamaha", yearIntro: 2018, yearEnd: 2021, numCC: 599, type: .sport),
            Moto(model: "S1000 RR", marca: "BMW", yearIntro: 2021, yearEnd: nil, numCC: 998, type: .supersport),
            Moto(model: "RS 457", marca: "Aprilia", yearIntro: 2023, yearEnd: nil, numCC: 457, type: .sport),
            Moto(model: "Duke 790", marca: "KTM", yearIntro: 2019, yearEnd: 2021, numCC: 789, type: .naked),
            Moto(model: "MT 07", marca: "Yamaha", yearIntro: 2013, yearEnd: nil, numCC: 690, type: .naked),
            Moto(model: "Duke 890", marca: "KTM", yearIntro: 2022, yearEnd: 2023, numCC: 889, type: .naked),
            Moto(model: "MT 09", marca: "Yamaha", yearIntro: 2014, yearEnd: nil, numCC: 890, type: .naked),
            Moto(model: "MT 10", marca: "Yamaha", yearIntro: 2015, yearEnd: nil, numCC: 999, type: .supernaked),
            Moto(model: "Duke 990", marca: "KTM", yearIntro: 2024, yearEnd: nil, numCC: 989, type: .naked),
            Moto(model: "ZX 4R", marca: "Kawasaki", yearIntro: 2022, yearEnd: nil, numCC: 399, type: .sport),
            Moto(model: "ZX 6R", marca: "Kawasaki", yearIntro: 2023, yearEnd: nil, numCC: 636, type: .sport),
            Moto(model: "ZX 10R", marca: "Kawasaki", yearIntro: 2016, yearEnd: nil, numCC: 1099, type: .supersport),
            Moto(model: "YFZR 1", marca: "Yamaha", yearIntro: 2016, yearEnd: nil, numCC: 999, type: .supersport),
            Moto(model: "YFZR 3", marca: "Yamaha", yearIntro: 2018, yearEnd: nil, numCC: 320, type: .sport),
            Moto(model: "YFZR 15", marca: "Yamaha", yearIntro: 2017, yearEnd: nil, numCC: 155, type: .sport),
            Moto(model: "Panigale V4", marca: "Ducati", yearIntro: 2012, yearEnd: nil, numCC: 999, type: .supersport),
            Moto(model: "Panigale V2", marca: "Ducati", yearIntro: 2014, yearEnd: nil, numCC: 890, type: .sport),
            Moto(model: "Cbr 1000r", marca: "Honda", yearIntro: 2005, yearEnd: nil, numCC: 995, type: .supersport),
            Moto(model: "YFZR 7", marca: "Yamaha", yearIntro: 2021, yearEnd: nil, numCC: 690, type: .sport),
            Moto(model: "RSV4", marca: "Aprilia", yearIntro: 2015, yearEnd: nil, numCC: 999, type: .supersport),
            Moto(model: "RS 660", marca: "Aprilia", yearIntro: 2019, yearEnd: nil, numCC: 660, type: .sport),
            Moto(model: "Streetfighter V4S", marca: "Ducati", yearIntro: 2014, yearEnd: nil, numCC: 1099, type: .supernaked),
            Moto(model: "ZH2", marca: "Kawasaki", yearIntro: 2018, yearEnd: nil, numCC: 10109, type: .supernaked)
        ]
    }
    
}
