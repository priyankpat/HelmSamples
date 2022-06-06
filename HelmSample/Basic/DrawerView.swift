//
//  DrawerView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI

struct DrawerView: View {
    var body: some View {
        VStack {
            Text("Drawer")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .transition(.move(edge: .leading))
        .background(Color.gray)
        .offset(y: 50)
    }
}

struct DrawerView_Previews: PreviewProvider {
    static var previews: some View {
        DrawerView()
    }
}
