//
//  DetailTitle.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-15.
//

import SwiftUI

struct DetailTitle: View {
    
    private let title: String
    private let explanation: String
    
    init(
        title: String,
        explanation: String
    ) {
        self.title = title
        self.explanation = explanation
    }
    
    var body: some View {
        HStack(spacing: 64) {
            Text(title)
                .foregroundColor(.secondary)
            Text(explanation)
                .foregroundColor(.primary)
            Spacer()
        }
    }
}
