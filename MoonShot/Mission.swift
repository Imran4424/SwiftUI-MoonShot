//
//  Mission.swift
//  MoonShot
//
//  Created by Shah Md Imran Hossain on 16/4/23.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
