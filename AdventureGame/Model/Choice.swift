//
//  Choice.swift
//  HelloWorld
//
//  Created by Patrick Parks on 11/17/24.
//

import Foundation

struct Choice {
    let title: String
    let description: String
    let success: Bool
    var nextChoices: [Choice]?
}
