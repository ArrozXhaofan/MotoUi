//
//  BotonMainView.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 9/10/24.
//

import SwiftUI

struct BotonMainView: View {
    
    let btnTxt: String
    let btnColor: Color
    
    var body: some View {
        Text(btnTxt)
            .font(.system(size: 15, weight: .light))
            .frame(width: 230, height: 50)
            .background(btnColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .foregroundStyle(.white)
            .padding()
    }
}

#Preview {
    BotonMainView(btnTxt: "Go rider", btnColor: .pink)
}
