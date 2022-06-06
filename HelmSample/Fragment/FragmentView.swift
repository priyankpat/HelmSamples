//
//  FragmentView.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import SwiftUI
import Helm

struct FragmentView<V: View>: View {
    @EnvironmentObject private var _helm: Helm<SampleFragment>
    private let _fragment: SampleFragment
    private let _builder: () -> V
    init(_ fragment: SampleFragment, @ViewBuilder builder: @escaping () -> V) {
        _fragment = fragment
        _builder = builder
    }
    
    var body: some View {
        if _helm.isPresented(_fragment) {
            _builder()
        }
    }
}
