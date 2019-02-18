//
//  TrackingDataStore.swift
//  kpAdvance
//
//  Created by Vitali Kazakevich on 2/18/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import Foundation

protocol TrackingDataStoreProtocol {
	var trackingHistory: [String] { get }
	func addTrackingInfo(_ trackingInfo: String)
	func removeTrackingInfo(_trackingInfo: String)
}
