import SwiftUI

struct Content7Cell: View {
    var body: some View {
        HStack {
            HStack {
                VStack {
                    Text(StringConstants.kLbl21)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.LightBlueA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                }
                .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.LightBlueA700))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblRentForAugust)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.trailing)
                    Text(StringConstants.kMsgGreatStreet1)
                        .font(FontScheme.kSFProRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray80099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(10.0))
                }
                .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(43.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(255.0), height: getRelativeHeight(48.0),
                   alignment: .leading)
            Text(StringConstants.kLbl6)
                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Gray8004c)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(58.0))
        }
        .frame(width: getRelativeWidth(320.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Content7Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Content7Cell()
 }
 } */
