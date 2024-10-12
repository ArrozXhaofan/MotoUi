//
//  BtnIconCpny.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 9/10/24.
//

import SwiftUI

struct BarIconStart: View {
    
    @ObservedObject var conexion: MainVM

    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20) {
                
                /*VStack {
                    Image("ducati-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .modifier(for: true)
                        .onTapGesture {
                            //conexion.changeIcon(id: bike.id)
                        }
                }*/
                
                                                    
                ForEach(conexion.allBikes, id: \.id) {bike in
                    
                    VStack {
                        Image(bike.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .modifier(for: bike.imgIconOn)
                            .onTapGesture {
                                conexion.changeIcon(id: bike.id)
                                conexion.playSound()
                                self.conexion.wallpaper = bike.imgWallpaper
                            }
                            .foregroundStyle(.ultraThinMaterial)
                    }
                    
                }
                
            }
            .padding(.leading, 20)

        }
    }
    
}

extension View {
    func modifier(for isActive: Bool) -> some View {
        self
            .colorMultiply(!isActive ? .gray : .white) // Aplicar color si no está activo
            .scaleEffect(!isActive ? 1 : 1) // Cambiar escala según el estado
            .shadow(color: !isActive ? .black : .white, radius: 10)
            .frame(width: 150, height: 100)
            .background {
                Rectangle()
                    .stroke(!isActive ? .gray : .white)
                    
            }
    }
}

#Preview {
    BarIconStart(conexion: MainVM())
}



