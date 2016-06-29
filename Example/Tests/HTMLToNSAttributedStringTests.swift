import XCTest
import Aztec

class HTMLToNSAttributedStringTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let parser = Libxml2.HTMLConverter()

        let html = "<HTML style='a' nostye peace='123'>Hello World!</HTML>"
        let htmlData = html.dataUsingEncoding(NSUTF8StringEncoding)!
        let output = parser.convert(htmlData)

        if output.length > 0 {
            var range = NSRange(location: 0, length: output.length)
            let attributes = output.attributesAtIndex(0, effectiveRange: &range)
            print(output, attributes)
        }
    }
}