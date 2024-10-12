//
//  ContentView.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 9/10/24.
//

import SwiftUI

struct StartView: View {
    
    @StateObject var mainConexion: MainVM = MainVM()

    var body: some View {
        
        NavigationStack {

        ZStack {
            
            VStack {
                
                HStack {
                    Image("jeanLaura-logo2")
                        .renderingMode(.template)
                        .foregroundStyle(.red)
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        HStack(spacing: 5) {
                            Image(systemName: "motorcycle")
                            Text("Bikes")
                        }
                        HStack(spacing: 5) {
                            Image(systemName: "play.circle")
                            Text("Sound")
                        }
                        HStack(spacing: 5) {
                            Image(systemName: "abs")
                            Text("Compare")
                        }
                    }
                    .font(.system(size: 13, weight: .light))
                    .shadow(color: .white, radius: 10)
                    .foregroundStyle(.white)
                }//TopBar
                
                HStack {
                    VStack(alignment: .leading , spacing: -10) {
                        Text("MotoUIX")
                            .font(.system(size: 50, weight: .bold))
                            .frame(alignment: .leading)
                        Text("All love to CC")
                            .font(.system(size: 35, weight: .thin))
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                .padding(.top, 90)
                .padding(.bottom)
                
                HStack(alignment: .top, spacing: 25) {
                    VStack {
                        Image(systemName: "livephoto.play")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            
                        Text("WAC Sound")
                            .font(.system(size: 11))
                            .frame(width: 40, alignment: .center)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                    }
                    .foregroundStyle(.pink)
                    
                    VStack {
                        Image(systemName: "chart.line.text.clipboard")
                            .resizable()
                            .fontWeight(.thin)
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("Complete library")
                            .font(.system(size: 11))
                            .frame(width: 60, alignment: .center)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                    }
                    .foregroundStyle(.white)
                    
                    VStack {
                        Image(systemName: "tray.and.arrow.up")
                            .resizable()
                            .fontWeight(.thin)
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("Storage option")
                            .font(.system(size: 11))
                            .frame(width: 50, alignment: .center)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
                
                HStack {
                    Text("Ten acceso a una libreria completa de datos de  gratis completamente gratis a todos los bikers en constante actualizacion y mucho mas.")
                        .foregroundStyle(.white)
                        .font(.system(size: 11, weight: .semibold))
                        .frame(width: 360, alignment: .leading)
                    Spacer()
                }
                .padding(.vertical)

                HStack {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "gauge.open.with.lines.needle.84percent.exclamation")
                            Text("Start")
                            Spacer()
                        }
                        .font(.system(size: 24, weight: .semibold))
                        .padding()
                        .foregroundStyle(.black)
                        .frame(width: 170, height: 50)
                        .background {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundStyle(.white)
                        }
                    }
                    Spacer()
                }
                
                    
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Motors")
                    BarIconStart(conexion: mainConexion)
                }
            }
                
        }//Main Ztack
        .padding(.horizontal)
        .padding(.top, 50)
        .padding(.bottom, 100)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Image(mainConexion.wallpaper)
                .resizable()
                .scaledToFill()
                .overlay(Color.black.opacity(0.6))
        }
        .ignoresSafeArea()
        }//Nav stack

    }
}




#Preview {
    StartView()
}
