//
//  TrackingInteractor.swift
//  kpAdvance
//
//  Created by Vitali Kazakevich on 2/18/19.
//  Copyright © 2019 Kazakevich, Vitaly. All rights reserved.
//

import Foundation

protocol TrackingInteractorDelegate {
	func trackingInteractorDidUpdateTrackingInfo(_ trackingInfo: String) // TODO: mock object
	func trackingInteractorDidUpdateHistory(_ history: String)
}

protocol TrackingInteractor {
	var delegate: TrackingInteractorDelegate { get set }
	
	func startTracking(item: String) // TODO: String is a mock object for now
	func stopTracking()
}
