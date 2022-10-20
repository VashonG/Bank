import SwiftUI

struct Content2Cell: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLbl15)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(12.0))
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.all, getRelativeWidth(12.0))
                        .foregroundColor(ColorConstants.Green500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Green500))
                }
            })
            .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.Green500))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblPrivacyPolicy)
                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kMsgSeeHowWeMana)
                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(15.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray80099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
            }
            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(48.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
            Text(StringConstants.kLbl6)
                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Gray8004c)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                       alignment: .center)
                .padding(.leading, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(328.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Content2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Content2Cell()
 }
 } */
