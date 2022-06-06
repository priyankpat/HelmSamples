//
//  BasicEntryView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct BasicEntryView: View {
    @StateObject private var _helm: Helm = try! Helm(nav: [
        SampleSegue(.a => .b).makeDismissable(),
    ])
    
    var body: some View {
        BasicExample()
            .environmentObject(_helm)
    }
}

struct BasicEntryView_Previews: PreviewProvider {
    static var previews: some View {
        BasicEntryView()
    }
}
