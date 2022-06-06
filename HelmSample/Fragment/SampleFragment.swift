//
//  SampleFragment.swift
//  HelmSample
//
//  Created by Priyank Patel on 2022-06-06.
//

import Foundation
import Helm

typealias SampleSegue = Segue<SampleFragment>
typealias SampleGraph = Set<SampleSegue>
typealias SampleEdge = DirectedEdge<SampleFragment>

extension String: Identifiable {
    public var id: String {
        self
    }
}

enum SampleFragment: Fragment {
    case a
    case b
    case c
    case d
}
