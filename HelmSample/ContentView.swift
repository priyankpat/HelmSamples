//
//  ContentView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink("Basic Drawer") {
                    BasicEntryView()
                }
                NavigationLink("Action Sheet") {
                    ActionSheetEntryView()
                }
                NavigationLink("Navigation") {
                    NavigationEntryView()
                }
                NavigationLink("Tab") {
                    TabEntryView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
