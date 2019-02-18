//
//  TrackingInteractor.swift
//  kpAdvance
//
//  Created by Vitali Kazakevich on 2/18/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import Foundation

protocol TrackingInteractorDelegateProtocol {
	func trackingInteractorDidUpdateCurrentTrackingInfo(_ trackingInfo: String) // TODO: mock object
	func trackingInteractorDidUpdateHistory(_ history: [String])
}

protocol TrackingInteractorProtocol {
	var delegate: TrackingInteractorDelegateProtocol? { get set }
	
	func startTracking(item: String) // TODO: String is a mock object for now
	func stopTracking()
}

class TrackingInteractor {
	var delegate: TrackingInteractorDelegateProtocol?
	var trackingDataStore: TrackingDataStoreProtocol?
	private var currentTrackingInfo: String?
	
	
}

// MARK: - TrackingInteractorProtocol conformance
extension TrackingInteractor: TrackingInteractorProtocol {
	func startTracking(item: String) {
		currentTrackingInfo = item
		delegate?.trackingInteractorDidUpdateCurrentTrackingInfo(item)
	}
	
	func stopTracking() {
		<#code#>
	}
}
