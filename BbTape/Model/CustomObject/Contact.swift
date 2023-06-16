//
//  Contact.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-15.
//

import SwiftUI

struct Contact: Identifiable {
    var id: UUID = UUID()
    var phone: String
    var email: String
    var address: String
    var website: String
}
