//
//  ArticleTableViewController.swift
//  CKCC2
//
//  Created by KimhounKP on 3/29/17.
//  Copyright © 2017 KimhounKP. All rights reserved.
//

import UIKit

class ArticleTableViewController: UITableViewController {
    var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //load articles from server or database
        articles = loadArticles()
        tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_article", for: indexPath)
        let article = articles[indexPath.row]
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.content
        return cell
    }
    
    func loadArticles() -> [Article] {
        var articles = [Article]()
        
        let article1 = Article()
        article1.title = "ICT Training Course"
        article1.content = "CKCC Will provide the oportunity for learning"
        article1.imageUrl = "http://abc.com/imag.jpg"
        articles.append(article1)
        
        let article2 = Article()
        article2.title = "ICT Training Course"
        article2.content = "CKCC Will provide the oportunity for learning"
        article2.imageUrl = "http://abc.com/imag.jpg"
        articles.append(article2)
        
        let article3 = Article()
        article3.title = "ICT Training Course"
        article3.content = "CKCC Will provide the oportunity for learning"
        article3.imageUrl = "http://abc.com/imag.jpg"
        articles.append(article3)
        
        return articles
        
    }
}
