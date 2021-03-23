//
//  BooksViewController.swift
//  fraternity
//
//  Created by Jeffrey Frabell on 3/23/21.
//  Copyright © 2021 Jeffrey Frabell. All rights reserved.
//

import UIKit
import WebKit

class BooksViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://dadstartingover.com/fraternity/download-books/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        //let customSymbol = UIImage(named: "book")

        
    }

}
