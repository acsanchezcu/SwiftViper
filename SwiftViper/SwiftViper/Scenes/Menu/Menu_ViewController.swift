//
//  Menu_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Menu_ViewController: Lib_ViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    
    var presenter: Menu_Presenter_Protocol!
    
    private var _viewModels: [Menu_ViewModel]!
    var viewModels: [Menu_ViewModel] {
        get {
            return _viewModels
        }
        set {
            _viewModels = newValue
        }
    }
    
    // MARK: - Private Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModels = []
        
        tableView.register(UINib.init(nibName: "Menu_Section_TableViewCell", bundle: nil), forCellReuseIdentifier: "Menu_Section_TableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 45.0
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView.init()
        
        presenter.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.viewWasShown()
    }
    
    // MARK: - Delegates
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: Menu_Section_TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Menu_Section_TableViewCell", for: indexPath) as! Menu_Section_TableViewCell
        
      //  let cell: Menu_Section_TableViewCell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(Menu_Section_TableViewCell.classForCoder())) as! Menu_Section_TableViewCell
        
        let view_model = viewModels[indexPath.row]
        
        cell.sectionLabel.text = view_model.sectionName
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let view_model = viewModels[indexPath.row]
        
        presenter.didTapped(scene: view_model.scene)
    }
}

extension Menu_ViewController: Menu_ViewController_Protocol {
    
}
