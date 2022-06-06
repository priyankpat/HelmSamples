//
//  ActionSheetView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct ActionSheetView: View {
    @EnvironmentObject private var _helm: Helm<SampleFragment>
    
    var body: some View {
        VStack {
            Button(action: { _helm.present(fragment: .b) }) {
                Text("Open sheet")
            }
            .sheet(isPresented: _helm.isPresented(.b)) {
                Text("Hello there!")
            }
            if let error = _helm.errors.last {
                Text("Error: \(error.localizedDescription)")
                    .foregroundColor(.red)
            }
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
