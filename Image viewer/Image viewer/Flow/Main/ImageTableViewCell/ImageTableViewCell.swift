//
//  ImageTableViewCell.swift
//  Image viewer
//
//  Created by Andrian Nebeso on 12/24/20.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    @IBOutlet private weak var thumbnailImageView: UIImageView!
    @IBOutlet private weak var imageNameLabel: UILabel!
    @IBOutlet private weak var downloadProgressLabel: UILabel!
    @IBOutlet private weak var downloadProgressView: UIProgressView!
    @IBOutlet private weak var downloadButton: UIButton!
    
    @IBAction func downloadButtonDidPress(_ sender: Any) {
        viewModel?.handleDownload()
    }
    
    private var viewModel: CellViewModel? {
        didSet {
            viewModel?.downloadProgressDidUpdate = { [weak self] text, percentage in
                self?.updateDownloadProgressWith(progressText: text, progressPercentage: percentage)
            }
            
            viewModel?.downloadStateDidUpdate = { [weak self] state in
                self?.updateDownloadButtonWith(downloadState: state)
            }
            
            viewModel?.imageDataDidUpdate = { [weak self] thumbnail in
                self?.setupImageViewFrom(thumbnail: thumbnail)
            }
        }
    }
    
    private func updateDownloadProgressWith(progressText: String, progressPercentage: Float) {
        downloadProgressLabel.text = progressText
        downloadProgressView.progress = progressPercentage
    }
    
    private func updateDownloadButtonWith(downloadState: DownloadState) {
        // To do
    }
    
    private func setupImageViewFrom(thumbnail: UIImage) {
        imageView?.image = thumbnail
    }
    
    func updateCellViewModel(viewModel: CellViewModel) {
        self.viewModel = viewModel
    }
}
