//
//  ViewController.swift
//  LifecycleControls
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var allLoveSongs = [Song]()
    
    @IBOutlet weak var loveSongsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loveSongsTable.delegate = self
        loveSongsTable.dataSource = self
        self.allLoveSongs = Song.loveSongs
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Settings.maxNumberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let loveCell = tableView.dequeueReusableCell(withIdentifier: "Love Song Cell", for: indexPath)
        loveCell.textLabel?.text = allLoveSongs[indexPath.row].name
        loveCell.detailTextLabel?.text = allLoveSongs[indexPath.row].artist
        return loveCell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loveSongsTable.reloadData()
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

