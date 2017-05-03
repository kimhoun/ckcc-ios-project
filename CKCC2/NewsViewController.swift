//
//  NewsViewController.swift
//  CKCC2
//
//  Created by KimhounKP on 4/26/17.
//  Copyright © 2017 KimhounKP. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var articles = [Articles]() // calling class Articles
    override func viewDidLoad() {
        
        super.viewDidLoad()
        articles = loadArticles()
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_views") as!NewsTableViewCell
        let article = articles[indexPath.row]
        cell.newsLabel.text = article.title
        return cell
    }
    func loadArticles() -> [Articles] {
        let a1 = Articles(title : "CKCC Winter Exhibition", date: "25 April 2017", imageUrl : "")
        let a2 = Articles(title : "CKCC Winter 1", date: "21 April 2017", imageUrl : "")
        let a3 = Articles(title : "CKCC Winter 2", date: "24 April 2017", imageUrl : "")
        let articles = [a1, a2, a3]
        return articles
        
    }
}
