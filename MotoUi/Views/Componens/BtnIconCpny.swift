//
//  BtnIconCpny.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 9/10/24.
//

import SwiftUI

struct BarIconStart: View {
    
    @ObservedObject var conexion: MainVM
<<<<<<< HEAD

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
                    
=======
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(conexion.allBikes, id: \.id) {bike in
>>>>>>> f735f98 (ListView pre test)
                    VStack {
                        Image(bike.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70, height: 70)
                            .modifier(for: bike.imgIconOn)
                            .onTapGesture {
                                conexion.changeIcon(id: bike.id)
<<<<<<< HEAD
                                conexion.playSound()
=======
                                if !conexion.isPlaying {
                                    conexion.playSound(nameAudio: bike.audioName)
                                }else {
                                    conexion.pauseSound()
                                }
>>>>>>> f735f98 (ListView pre test)
                                self.conexion.wallpaper = bike.imgWallpaper
                            }
                            .foregroundStyle(.ultraThinMaterial)
                    }
<<<<<<< HEAD
                    
                }
                
            }
            .padding(.leading, 20)

        }
    }
    
=======
                }
            }
            .padding(.leading, 20)
        }
    }
>>>>>>> f735f98 (ListView pre test)
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



