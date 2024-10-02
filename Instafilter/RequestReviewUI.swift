//
//  RequestReviewUI.swift
//  Instafilter
//
//  Created by APPLE on 09/08/24.
//
import StoreKit
import SwiftUI

struct RequestReviewUI: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        Button("Leave a review"){
            requestReview()
        }
    }
}

#Preview {
    RequestReviewUI()
}
