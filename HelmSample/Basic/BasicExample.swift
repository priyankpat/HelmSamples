//
//  BasicExample.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct BasicExample: View {
    @EnvironmentObject private var _helm: Helm<SampleFragment>
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        if !self._helm.isPresented(.b) {
                            self._helm.present(fragment: .b)
                        } else {
                            self._helm.dismiss()
                        }
                    }) {
                        Image("iconMenu")
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 16)
                }
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: Alignment(horizontal: .leading, vertical: .center))
                .background(Color.black)
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity, alignment: .topLeading)
            
            FragmentView(.b) {
                DrawerView()
            }
        }
        .animation(.default, value: _helm.isPresented(.b))
        .frame(maxWidth: .infinity,
               maxHeight: .infinity, alignment: .topLeading)
        .navigationTitle("Basic Drawer Example")
    }
    
    private var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
}

struct BasicExample_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @StateObject private var _helm: Helm = try! Helm(nav: [
            SampleSegue(.a => .b).makeDismissable(),
        ])
        
        var body: some View {
            BasicExample()
                .environmentObject(_helm)
        }
    }
    
    static var previews: some View {
        PreviewWrapper()
    }
}
