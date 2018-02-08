//
//  WebViewController.swift
//  BoutTime
//
//  Created by nikko444 on 2018-02-07.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    let url = URL(string: "https://google.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let unwrappedUrl = url else {
            fatalError("URL has not been passed into the WebViewController")
        }
        let request = URLRequest(url: unwrappedUrl)
        
        webView.load(request)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
