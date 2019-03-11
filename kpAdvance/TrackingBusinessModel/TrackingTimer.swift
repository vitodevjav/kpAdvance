//
//  TrackingTimer.swift
//  kpAdvance
//
//  Created by Vitali Kazakevich on 2/18/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import Foundation

protocol TrackingTimerProtocol {
    var trackedTime: TimeInterval { get }

	func start()
	func pause()
	func stop()
}

class MockTrackingTimer: TrackingTimerProtocol {
    private var startDate: Date?
    private var commitedTimeInterval: TimeInterval = 0.0
    private var shouldResetBeforeTracking = false

    var trackedTime: TimeInterval {
        return commitedTimeInterval + Date().timeIntervalSince(startDate ?? Date())
    }

    func start() {
        if startDate == nil {
            commitedTimeInterval = 0.0
        }
        startDate = Date()
    }

    func pause() {
        commitTrackingInterval()
    }

    func stop() {
        commitTrackingInterval()
        self.startDate = nil
    }

    private func commitTrackingInterval() {
        guard let startDate = startDate else { return } // can't pause before stop
        commitedTimeInterval += Date().timeIntervalSince(startDate)
    }
}
