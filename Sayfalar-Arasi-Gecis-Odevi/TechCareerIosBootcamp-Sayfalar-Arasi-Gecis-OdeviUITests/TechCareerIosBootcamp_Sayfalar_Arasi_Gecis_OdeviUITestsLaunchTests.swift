//
//  TechCareerIosBootcamp_Sayfalar_Arasi_Gecis_OdeviUITestsLaunchTests.swift
//  TechCareerIosBootcamp-Sayfalar-Arasi-Gecis-OdeviUITests
//
//  Created by Mehmet Saltan on 27.02.2022.
//

import XCTest

class TechCareerIosBootcamp_Sayfalar_Arasi_Gecis_OdeviUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
