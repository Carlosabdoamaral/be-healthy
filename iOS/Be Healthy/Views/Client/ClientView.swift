//
//  ClientView.swift
//  Be Healthy
//
//  Created by Carlos Amaral on 11/07/22.
//

import SwiftUI

struct ClientView: View {
    let squareWidth : CGFloat = 110
    
    //MARK: Mudar o background do form
    init(){ UITableView.appearance().backgroundColor = .clear }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background").ignoresSafeArea()
                
                List {
                    Section {
                        ForEach(0..<5) { i in
                            NavigationLink(destination: ClientView()) {
                                Text("Exercício #\(i)")
                            }
                        }
                    } header: { Text("Exercícios do dia") }

                    Section {
                        ForEach(0..<5) { i in
                            NavigationLink(destination: ClientView()) {
                                Text("Exercício #\(i)")
                            }
                        }
                    } header: { Text("Next workout") }
                }
            }
            .navigationTitle("BeHealthy")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {

                }
            }
        }
        .refreshable {
            
        }
    }
}

struct ClientView_Previews: PreviewProvider {
    static var previews: some View {
        ClientView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
        
        ClientView()
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
    }
}
