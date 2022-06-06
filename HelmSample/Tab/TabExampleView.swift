//
//  TabExampleView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct TabExampleView: View {
    @EnvironmentObject private var _helm: Helm<SampleFragment>
    
    var body: some View {
        VStack {
            if let error = _helm.errors.last {
                Text("Error: \(error.localizedDescription)")
                    .foregroundColor(.red)
                    .padding()
            }
            TabView(selection: _helm.pickPresented([.b, .c, .d])) {
                Text("Users view")
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("Users")
                    }
                    .tag(Optional.some(SampleFragment.b))
                Text("Clips view")
                    .tabItem {
                        Image(systemName: "paperclip.circle.fill")
                        Text("Clips")
                    }
                    .tag(Optional.some(SampleFragment.c))
                Text("More view")
                    .tabItem {
                        Image(systemName: "ellipsis")
                        Text("More")
                    }
                    .tag(Optional.some(SampleFragment.d))
            }
        }
    }
}

struct TabExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TabExampleView()
    }
}
