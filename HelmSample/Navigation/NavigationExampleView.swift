//
//  NavigationView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct NavigationContenView: View {
    @EnvironmentObject private var _helm: Helm<SampleFragment>
    
    let title: String
    var body: some View {
        Text("This is \(title)")
    }
}

struct NavigationExampleView: View {
    @EnvironmentObject private var _helm: Helm<SampleFragment>
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section(
                        content: {
                            ForEach(["Porto", "London", "Barcelona"]) { city in
                                NavigationLink(destination: NavigationContenView(title: city),
                                               isActive: _helm.isPresented(.b, id: city)) {
                                    Text(city)
                                }
                            }
                            Button(action: { _helm.present(fragment: .b, id: "London") }) {
                                Text("Select London")
                            }
                        },
                        footer: {
                            if let error = _helm.errors.last {
                                Section {
                                    Text("Error: \(error.localizedDescription)")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                    )
                }
            }
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExampleView()
    }
}
