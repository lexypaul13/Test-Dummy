//
//  ViewController.swift
//  Test Dummy
//
//  Created by Alex Paul on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Network().getJSON(urlString: "https://newsapi.org/v2/everything?q=apple&from=2022-01-15&to=2022-01-15&sortBy=popularity&apiKey=832a7dc044814754adc70dde879593e4") { (news) in
            if let news = news {
                for article in news {
                    print(article.article)
                }
            }
        }
    }


}

