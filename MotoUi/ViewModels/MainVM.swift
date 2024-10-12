//
//  MainVM.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 9/10/24.
//

import Foundation
import AVFoundation


final class MainVM: ObservableObject {
    
    @Published var allBikes: [Bike]
    @Published var wallpaper: String = "wallpaper-bmw"
    @Published var player: AVAudioPlayer?
<<<<<<< HEAD
=======
    @Published var isPlaying: Bool = false
>>>>>>> f735f98 (ListView pre test)

    
    init() {
        self.allBikes = [
<<<<<<< HEAD
            Bike(id: 0,image: "bmw-logo", imgIconOn: true, imgWallpaper: "wallpaper-bmw"),
            Bike(id: 1,image: "honda-logo", imgIconOn: false, imgWallpaper: "wallpaper-honda"),
            Bike(id: 2,image: "kawasaki-logo", imgIconOn: false, imgWallpaper: "wallpaper-kawasaki"),
            Bike(id: 3,image: "ducati-logo", imgIconOn: false, imgWallpaper: "wallpaper-ducati"),
            Bike(id: 4,image: "aprilia-logo", imgIconOn: false, imgWallpaper: "wallpaper-aprilia"),
            Bike(id: 5,image: "yamaha-logo", imgIconOn: false, imgWallpaper: "wallpaper-yamaha"),
            Bike(id: 6,image: "mvagusta-logo", imgIconOn: false, imgWallpaper: "wallpaper-mvagusta"),
            Bike(id: 7,image: "ktm-logo", imgIconOn: false, imgWallpaper: "wallpaper-ktm"),
            Bike(id: 8,image: "susuki-logo", imgIconOn: false, imgWallpaper: "wallpaper-susuki"),
            Bike(id: 9,image: "triumph-logo", imgIconOn: false, imgWallpaper: "wallpaper-triumph"),
=======
            Bike(id: 0,image: "bmw-logo", imgIconOn: true, imgWallpaper: "wallpaper-bmw", audioName: "bmw-audio"),
            Bike(id: 1,image: "honda-logo", imgIconOn: false, imgWallpaper: "wallpaper-honda", audioName: "honda-audio"),
            Bike(id: 2,image: "kawasaki-logo", imgIconOn: false, imgWallpaper: "wallpaper-kawasaki", audioName: "kawasaki-audio"),
            Bike(id: 3,image: "ducati-logo", imgIconOn: false, imgWallpaper: "wallpaper-ducati", audioName: "ducati-audio"),
            Bike(id: 4,image: "aprilia-logo", imgIconOn: false, imgWallpaper: "wallpaper-aprilia", audioName: "aprilia-audio"),
            Bike(id: 5,image: "yamaha-logo", imgIconOn: false, imgWallpaper: "wallpaper-yamaha", audioName: "yamaha-audio"),
            Bike(id: 6,image: "mvagusta-logo", imgIconOn: false, imgWallpaper: "wallpaper-mvagusta", audioName: "mvagusta-audio"),
            Bike(id: 7,image: "ktm-logo", imgIconOn: false, imgWallpaper: "wallpaper-ktm", audioName: "ktm-audio"),
            Bike(id: 8,image: "susuki-logo", imgIconOn: false, imgWallpaper: "wallpaper-susuki", audioName: "susuki-audio"),
            Bike(id: 9,image: "triumph-logo", imgIconOn: false, imgWallpaper: "wallpaper-triumph", audioName: "triumph-audio"),
>>>>>>> f735f98 (ListView pre test)
        ]
    }
    

<<<<<<< HEAD
    func playSound() {
        
        print("Entro al func")
        
        if let url = Bundle.main.url(forResource: "aprilia-audio", withExtension: "wav") {
=======
    func playSound(nameAudio: String) {
        
        print("Entro al func")
        
        if let url = Bundle.main.url(forResource: nameAudio, withExtension: "wav") {
>>>>>>> f735f98 (ListView pre test)
            print("Camino del if: (\(url)")
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
<<<<<<< HEAD
=======
                self.isPlaying = true
>>>>>>> f735f98 (ListView pre test)
                print("camino del do")
            } catch {
                print("Error al reproducir el audio: \(error.localizedDescription)")
            }
        } else {
            print("Entro al else")
        }
    }
    
<<<<<<< HEAD
=======
    func pauseSound() {
        player?.pause()
        self.isPlaying = false
    }
    
>>>>>>> f735f98 (ListView pre test)
        
    func changeIcon(id: Int) {
            
        for i in allBikes.indices {
            allBikes[i].imgIconOn = false
        }
        
        // Luego, encuentra el índice de la bicicleta seleccionada y cambia su estado
        if let index = allBikes.firstIndex(where: { $0.id == id }) {
                    allBikes[index].imgIconOn = true
                }
        
        //print(allBikes)
    }
}
    

