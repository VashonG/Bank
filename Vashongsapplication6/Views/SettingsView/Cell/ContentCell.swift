import SwiftUI

struct ContentCell: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLbl5)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(15.0))
                        .padding(.vertical, getRelativeHeight(14.0))
                        .foregroundColor(ColorConstants.Orange500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Orange500))
                }
            })
            .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.Orange500))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgPersonalDetail)
                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kMsgViewAndUpdate)
                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(15.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray80099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(215.0), height: getRelativeHeight(31.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
            }
            .frame(width: getRelativeWidth(215.0), height: getRelativeHeight(61.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
            Text(StringConstants.kLbl6)
                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Gray8004c)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(34.0))
        }
        .frame(width: getRelativeWidth(320.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ContentCell_Previews: PreviewProvider {

 static var previews: some View {
 			ContentCell()
 }
 } */
