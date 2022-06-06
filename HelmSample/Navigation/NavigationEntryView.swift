//
//  NavigationEntryView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct NavigationEntryView: View {
    @StateObject private var _helm: Helm = try! Helm(nav: [
        SampleSegue(.a => .b).makeDismissable(),
    ])
    
    var body: some View {
        NavigationExampleView()
            .environmentObject(_helm)
    }
}

struct NavigationEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationEntryView()
    }
}
