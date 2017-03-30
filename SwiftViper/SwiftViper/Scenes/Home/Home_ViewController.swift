//
//  Home_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 21/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Home_ViewController: Lib_ViewController {
    
    var presenter: Home_Presenter_Protocol!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var noNotesLabel: UILabel!
    
    private var _viewModels: [Home_Note_ViewModel]! = []
    var viewModels: [Home_Note_ViewModel] {
        get {
            return _viewModels
        }
        set {
            _viewModels = newValue
            
            if newValue.count > 0 {
                tableView.isHidden = false
                noNotesLabel.isHidden = true
            } else {
                tableView.isHidden = true
                noNotesLabel.isHidden = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewIsReady()
        
        title = "Home"
        
        configureTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.viewIsShown()
    }
    
    func configureTableView() {
        tableView.register(UINib.init(nibName: "Home_Note_TableViewCell", bundle: nil), forCellReuseIdentifier: "Home_Note_TableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 45.0
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView.init()
    }
    
    @IBAction func btnLogoutTapped(_ sender: Any) {
        presenter.btnLogoutTapped()
    }
    
    @IBAction func btnAddNoteTapped(_ sender: Any) {
        presenter.btnAddNoteTapped()
    }
    
    override func btnMenuTapped(_ sender: Any) {
        presenter.btnMenuTapped()
    }
    
    
}

extension Home_ViewController: Home_ViewController_Protocol {
    
}

extension Home_ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: Home_Note_TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Home_Note_TableViewCell", for: indexPath) as! Home_Note_TableViewCell
        
        let view_model = viewModels[indexPath.row]
        
        cell.titleLabel.text = view_model.title
        cell.contentLabel.text = view_model.content
        cell.dateLabel.text = view_model.date
        
        return cell
    }
}

extension Home_ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
