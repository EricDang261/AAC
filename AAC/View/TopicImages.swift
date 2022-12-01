//
//  TopicImages.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/30/22.
//

import Foundation

struct TopicImages: Identifiable {
    var id = UUID()
    var name: String
}


let samplePhotos = (1...20).map { TopicImages(name: "topic-\($0)") }
