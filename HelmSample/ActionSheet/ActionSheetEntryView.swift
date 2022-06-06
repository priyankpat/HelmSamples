//
//  ActionSheetEntryView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct ActionSheetEntryView: View {
    @StateObject private var _helm: Helm = try! Helm(nav: [
        SampleSegue(.a => .b).makeDismissable(),
    ])
    
    var body: some View {
        ActionSheetView()
            .environmentObject(_helm)
    }
}

struct ActionSheetEntryView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetEntryView()
    }
}
