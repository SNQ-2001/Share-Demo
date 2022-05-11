//
//  ShareView.swift
//  Share-Demo
//
//  Created by TAISHIN MIYAMOTO on 2022/05/11.
//

import SwiftUI

struct ShareView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let link = URL(string: "https://qiita.com/SNQ-2001/items/86646b661ccc4a7a9034")!
        let activityViewController = UIActivityViewController( activityItems: [link], applicationActivities: nil)
        return activityViewController
    }
    func updateUIViewController(_ vc: UIActivityViewController, context: Context) {
    }
}
