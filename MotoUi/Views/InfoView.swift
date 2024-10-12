//
//  InfoView.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 14/10/24.
//

import SwiftUI

struct InfoView: View {
    
    let linkLinkedin = "https://www.linkedin.com/in/jeanpiere-laura-lobreguez-815318185/"
    let linkGithub = "https://github.com/ArrozXhaofan?tab=repositories"
    let numberTel = "+51946272030"
    let email = "jean.ganador12@gmail.com"

    
    var body: some View {
        
        
        VStack(spacing: 10) {
            Spacer()
            
            Image("jeanLaura-logo2")
                .renderingMode(.template)
                .foregroundStyle(.red)
            Image("jeanLaura-logo")
                .resizable()
                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 150, height: 30)
                .foregroundStyle(.white)
            
            Text("Contact me:")
                .padding(.vertical)
            
            VStack(spacing: 10) {
                linkBoton(link: linkLinkedin, imgName: "link", title: "LinkedIn")
                linkBoton(link: linkGithub, imgName: "link", title: "GitHub")
                linkBoton(link: linkGithub, imgName: "link", title: "GitHub")
                linkBoton(link: "tel:\(numberTel)", imgName: "phone", title: "Telefono")
                linkBoton(link: "mailto:\(email)", imgName: "envelope", title: "Email")
            }
            .frame(width: 350)
                
            Spacer()
            
            HStack(spacing: 1) {
                Text("MotoUi fue desarrollado para fans por Jeanpiere Laura, derechos resevador 2024")
            }
            .font(.system(size: 10, weight: .regular))
            .frame(width: 300, alignment: .center)
            .multilineTextAlignment(.center)
            .foregroundStyle(.secondary)
                
                
        }
        
    }
}

struct linkBoton: View {
    
    let link: String
    let imgName: String
    let title: String
    
    var body: some View {
        VStack {
            if let link = URL(string: link) {
                Link(destination: link) {
                    HStack {
                        Image(systemName: imgName)
                        Text(title)
                    }
                    .font(.system(size: 14))
                }
            } else {
                Text("Invalid URL")
                    .font(.system(size: 14))

            }
            
        }
    }
}

#Preview {
    InfoView()
}
