//
//  SelectView.swift
//  MotoUi
//
//  Created by Jeanpiere Laura on 9/10/24.
//

import SwiftUI

<<<<<<< HEAD
struct SelectView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
=======
enum filter {
    case naked
    case sport
}

struct SelectView: View {
    
    @State var selected: filter = .naked
    @State var txtName: String = ""
    @State var tabValue = 0

    
    var body: some View {
        VStack {
            TabView(selection: $tabValue) {
                    ListCentral()
                        //.searchable(text: $txtName, prompt: "Model")
                        .tabItem {
                            VStack {
                                Image(systemName: "character.magnify")
                                    .foregroundStyle(.red)
                                Text("Search")
                            }
                        }
                
                EvenView()
                    .tabItem {
                        VStack {
                            Image(systemName: "globe.americas")
                                .foregroundStyle(.red)
                            Text("Events")
                        }
                    }
            }
            .tint(.red)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
        
>>>>>>> f735f98 (ListView pre test)
}

#Preview {
    SelectView()
}
