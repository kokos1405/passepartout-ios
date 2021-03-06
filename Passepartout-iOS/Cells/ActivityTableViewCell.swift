//
//  ActivityTableViewCell.swift
//  Passepartout-iOS
//
//  Created by Davide De Rosa on 4/8/19.
//  Copyright (c) 2019 Davide De Rosa. All rights reserved.
//
//  https://github.com/passepartoutvpn
//
//  This file is part of Passepartout.
//
//  Passepartout is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Passepartout is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Passepartout.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit

extension Cells {
    static let activity = ActivityTableViewCell.Provider()
}

class ActivityTableViewCell: UITableViewCell {
    private lazy var activityIndicator = UIActivityIndicatorView()
}

extension ActivityTableViewCell {
    class Provider: CellProvider {
        typealias T = ActivityTableViewCell
        
        func dequeue(from tableView: UITableView, for indexPath: IndexPath) -> ActivityTableViewCell {
            let cell = tableView.dequeue(T.self, identifier: Provider.identifier, for: indexPath)
            cell.apply(Theme.current)
            cell.activityIndicator.startAnimating()
            cell.accessoryView = cell.activityIndicator
            cell.selectionStyle = .none
            return cell
        }
    }
}
