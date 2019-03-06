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
	func removeTrackingInfo(_ trackingInfo: String)
}

class MockTrackingDataStore: TrackingDataStoreProtocol {
    private static var trackingHistory: [String] = []
    var trackingHistory: [String] {
        return MockTrackingDataStore.trackingHistory
    }

    func addTrackingInfo(_ trackingInfo: String) {
        MockTrackingDataStore.trackingHistory.append(trackingInfo)
    }

    func removeTrackingInfo(_ trackingInfo: String) {
        guard let indexToRemove = MockTrackingDataStore.trackingHistory.firstIndex(of: trackingInfo) else { return } // can't remove, no such item
        MockTrackingDataStore.trackingHistory.remove(at: indexToRemove)
    }
}
