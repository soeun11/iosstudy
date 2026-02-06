//
//  User.swift
//  TCA
//
//  Created by 소은 on 2/5/26.
//
import Foundation
import SwiftData
@Model
final class User: Identifiable {
    var name: String
    var email: String
    @Attribute(.externalStorage) var imageData: Data?
    
    init(name: String, email: String, imageData: Data? = nil) {
        self.name = name
        self.email = email
        self.imageData = imageData
    }
}
