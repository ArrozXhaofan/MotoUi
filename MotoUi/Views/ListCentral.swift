//
//  ListCentral.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 15/10/24.
//

import SwiftUI

enum filterCase: Int, CaseIterable {
    case all
    case sport
    case naked
}

struct ListCentral: View {
    @StateObject var conexion: CentralVM = CentralVM()
    @State var txtSearch: String = ""
    @State var filterValue: filterCase = .all
    
    var filteredBikes: [Moto] {
        var filteredResults = conexion.allBikes

        if !txtSearch.isEmpty {
                let txtReal = txtSearch.lowercased().replacingOccurrences(of: " ", with: "") // Elimina espacios en la búsqueda
                filteredResults = filteredResults.filter { moto in
                    let model = moto.model.lowercased().replacingOccurrences(of: " ", with: "") // Elimina espacios en el modelo
                    
                    // Verificar si el modelo sin espacios contiene el texto de búsqueda
                    return model.contains(txtReal)
                }
            }
            // Filtrar por categoría seleccionada en el Picker
            switch filterValue {
            case .all:
                return filteredResults
            case .sport:
                return filteredResults.filter { moto in
                    moto.type == .sport
                }
            case .naked:
                return filteredResults.filter { moto in
                    moto.type == .naked
                }
            }
    }
    
    var body: some View {
        NavigationStack{
            VStack {
                
                HStack {
                    ZStack(alignment: .leading) {
                        
                        RoundedRectangle(cornerRadius: 7)
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 17))
                                .foregroundStyle(.barText)
                            TextField("Model", text: $txtSearch)
                                .foregroundStyle(.textColorGray)
                        }
                        .padding(.leading,5)
                        
                    }
                    .frame(width: 300, height: 35)
                    .foregroundStyle(.barBg)
                    .padding(.leading, 25)
                    
                    Spacer()
                    
                    Button(action: {
                        txtSearch = ""
                    }, label: {
                        Image(systemName: "x.square")
                            .font(.system(size: 25, weight: .thin))
                            .foregroundStyle(.red)
                    })
                    
                    Spacer()
                }
                .padding(.vertical)
                .padding(.trailing, 13)
                
                Picker("Filter", selection: $filterValue) {
                    Text("All")
                        .tag(filterCase.all)
                    Text("Sport")
                        .tag(filterCase.sport)
                    Text("Naked")
                        .tag(filterCase.naked)
                }
                .pickerStyle(.segmented)
                .tint(.red)
                .frame(width: 350)
                .padding(.bottom)
                
                ScrollView {
                    ForEach(filteredBikes, id: \.id) { bike in
                        ItemBike(dataBike: bike)
                        Divider()
                            .frame(height: 2)
                            .background(content: { Color.red.opacity(0.2) })
                    }
                }
            }
        }
    }
}

struct ItemBike: View {
    
    let dataBike: Moto
    
    var yearEndJustiy: String {
        if let realEndYear = dataBike.yearEnd {
            return "\(realEndYear)"
        } else {
            return "now"
        }
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text(dataBike.model)
                    .font(.system(size: 15, weight: .bold))
                +
                Text("  \(String(describing: dataBike.yearIntro)) -  \(yearEndJustiy)")
                    .font(.system(size: 12))
                Divider()
                HStack {
                    Text(dataBike.marca)
                        .foregroundStyle(.red)
                    Divider()
                    Text(dataBike.type.rawValue)
                    Divider()
                    Text("\(dataBike.numCC.description)cc")
                }
            }
            .font(.system(size: 13, weight: .medium))
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 55)
    }
}

#Preview {
    ListCentral()
}

