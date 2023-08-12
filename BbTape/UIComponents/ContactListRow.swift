//
//  ContactListRow.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-15.
//

import SwiftUI

struct ContactListRow: View {
    
    private let infoImage: String
    private let infoUnit: String
    
    init(
        infoImage: String,
        infoUnit: String
    ) {
        self.infoImage = infoImage
        self.infoUnit = infoUnit
    }
    var body: some View {
        HStack(spacing: 64) {
            Image(systemName: infoImage)
            Text(infoUnit)
        }
    }
}

