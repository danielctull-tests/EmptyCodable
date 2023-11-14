
import XCTest

struct Empty {}

extension Empty: Codable {
    init(from decoder: Decoder) throws {}
    func encode(to encoder: Encoder) throws {}
}

final class EmptyCodableTests: XCTestCase {

    func test() throws {
        let data = try JSONEncoder().encode(Empty())
        XCTAssertEqual(data, Data())
    }
}
