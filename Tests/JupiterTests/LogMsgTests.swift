import Jupiter
import OSLog
import XCTest

final class LogMsgTests: XCTestCase {
    let osLogger = Logger(subsystem: kAppIdentifier, category: "Hi")

    func testlogOsLogger() {
        let message = LogMsg("HUUHU")
        osLogger.info("\(message)")
    }
}
