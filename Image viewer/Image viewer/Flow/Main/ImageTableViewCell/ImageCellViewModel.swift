//
//  ImageCellViewModel.swift
//  Image viewer
//
//  Created by Andrian Nebeso on 12/24/20.
//

import UIKit

enum DownloadState {
    case downloaded
    case downloading
    case paused
    case downloadFailed
    case readyToDownload
}

extension ImageTableViewCell {
    class CellViewModel {
        private var imageURL: URL
        private var downloadState: DownloadState
        private var imageData: Data?
        
        private(set) var imageName: String
        
        var downloadProgressDidUpdate: ((String, Float) -> Void)?
        var downloadStateDidUpdate: ((DownloadState) -> Void)?
        var imageDataDidUpdate: ((UIImage) -> Void)?
        
        init(imageURL: URL, imageName: String) {
            self.imageURL = imageURL
            self.imageName = imageName
            downloadState = .readyToDownload
        }
        
        func handleDownload() {
            
        }
    }
}
