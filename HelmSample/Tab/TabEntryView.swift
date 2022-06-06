//
//  TabEntryView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct TabEntryView: View {
    private static var segues: Set<SampleSegue> {
        let entry: SampleEdge = .a => .c
        let forward: Set<SampleEdge> = .b => .c => .d => .b
        let backward: Set<SampleEdge> = .b => .d => .c => .b
        
        return Set(
            [SampleSegue(entry).makeAuto()]
            + forward.map { Segue($0) }
            + backward.map { Segue($0) }
        )
    }
    
    @StateObject private var _helm: Helm = try! Helm(nav: segues)
    
    var body: some View {
        TabExampleView()
            .environmentObject(_helm)
    }
}

struct TabEntryView_Previews: PreviewProvider {
    static var previews: some View {
        TabEntryView()
    }
}
