//
//  TodoApp.swift
//  Todo
//
//  Created by Nihar Buliya on 13/03/25.
//

import SwiftUI

@main
struct TodoApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
