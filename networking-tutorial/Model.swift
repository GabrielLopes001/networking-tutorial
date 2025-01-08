//
//  Model.swift
//  networking-tutorial
//
//  Created by Gabriel Lopes on 06/01/25.

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let postsModel = try? JSONDecoder().decode(PostsModel.self, from: jsonData)

import Foundation

// MARK: - PostsModelElement
struct Posts: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
