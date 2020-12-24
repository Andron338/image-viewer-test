//
//  ImageViewerViewController.swift
//  Image viewer
//
//  Created by Andrian Nebeso on 12/23/20.
//

import UIKit

class ImageViewerViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    
    private var viewModel = ImageViewerViewModel()
    
}

extension ImageViewerViewController: UITableViewDelegate {
    
}

extension ImageViewerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

