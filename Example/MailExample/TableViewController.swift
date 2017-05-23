//
//  TableViewController.swift
//  MailExample
//
//  Created by Steve on 2017/5/23.
//
//

import UIKit

class TableViewController: UITableViewController {
    let items: [String] = ["nihao", "wohao", "tahao", "ok", "not ok", "yes", "not yes", "yamo", "bige", "yep"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomCell.self, forCellReuseIdentifier: String(describing: CustomCell.self))
        tableView.allowsSelection = true
        tableView.allowsMultipleSelectionDuringEditing = true
        navigationItem.rightBarButtonItem = editButtonItem
    }
}

extension TableViewController {

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomCell.self)) as! CustomCell
        cell.titleLabel.text = items[indexPath.row]
        return cell
    }

    override func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return 100
    }
}
