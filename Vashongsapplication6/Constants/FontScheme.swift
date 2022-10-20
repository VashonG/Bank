import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kSFProBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProBold, size: size)
    }

    static func kSFProSemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProSemibold, size: size)
    }

    static func kSFProRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProRegular, size: size)
    }

    static func kSFProMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProMedium, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kSFProBold":
            result = self.kSFProBold(size: size)
        case "kSFProSemibold":
            result = self.kSFProSemibold(size: size)
        case "kSFProRegular":
            result = self.kSFProRegular(size: size)
        case "kSFProMedium":
            result = self.kSFProMedium(size: size)
        default:
            result = self.kSFProBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kSFProBold: String = "SFPro-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProSemibold: String = "SFPro-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProRegular: String = "SFPro-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProMedium: String = "SFPro-Medium"
    }
}
