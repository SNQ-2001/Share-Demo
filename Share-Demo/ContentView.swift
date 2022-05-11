//
//  ContentView.swift
//  Share-Demo
//
//  Created by TAISHIN MIYAMOTO on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    @State var ShowSharePopover: Bool = false
    @State var ShowShareSheet: Bool = false
    var body: some View {
        VStack(spacing: 50) {
            Button("iPad: ポップアップ, iPhone: ハーフモーダル") {
                Share1()
            }
            Button("iPad: 中央ポップアップ, iPhone: ハーフモーダル") {
                Share2()
            }
            Button("iPad: クラッシュ, iPhone: ハーフモーダル") {
                Share3()
            }
            Button("iPad: ポップアップ, iPhone: モーダル") {
                Share4()
            }
            Button("iPad: 中央ポップアップ, iPhone: モーダル") {
                Share5()
            }
        }
        .popover(isPresented: $ShowSharePopover) {
            ShareView()
        }
        .sheet(isPresented: $ShowShareSheet) {
            ShareView()
        }
    }

    // iPhone: ハーフモーダル
    // iPad: ポップアップ
    func Share1() {
        if UIDevice.current.userInterfaceIdiom == .pad {
            ShowSharePopover = true
        } else {
            let link = URL(string: "https://qiita.com/SNQ-2001/items/86646b661ccc4a7a9034")!
            let activityViewController = UIActivityViewController(activityItems: [link], applicationActivities: nil)
            let viewController = UIApplication.shared.windows.first?.rootViewController
            viewController?.present(activityViewController, animated: true, completion: nil)
        }
    }

    // iPhone: ハーフモーダル
    // iPad: 中央ポップアップ
    func Share2() {
        if UIDevice.current.userInterfaceIdiom == .pad {
            ShowShareSheet = true
        } else {
            let link = URL(string: "https://qiita.com/SNQ-2001/items/86646b661ccc4a7a9034")!
            let activityViewController = UIActivityViewController(activityItems: [link], applicationActivities: nil)
            let viewController = UIApplication.shared.windows.first?.rootViewController
            viewController?.present(activityViewController, animated: true, completion: nil)
        }
    }

    // iPhone: ハーフモーダル
    // iPad: クラッシュ
    func Share3() {
        let link = URL(string: "https://qiita.com/SNQ-2001/items/86646b661ccc4a7a9034")!
        let activityViewController = UIActivityViewController(activityItems: [link], applicationActivities: nil)
        let viewController = UIApplication.shared.windows.first?.rootViewController
        viewController?.present(activityViewController, animated: true, completion: nil)
    }

    // iPhone: モーダル
    // iPad: ポップアップ
    func Share4() {
        ShowSharePopover = true
    }

    // iPhone: モーダル
    // iPad: 中央ポップアップ
    func Share5() {
        ShowShareSheet = true
    }
}
