import SwiftUI

struct LoadingView: View {
    @StateObject var loadingViewModel = LoadingViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                Text(StringConstants.kLbl39)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.LightBlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(6.0))
                                Spacer()
                                VStack {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(10.0),
                                               height: getRelativeWidth(10.0), alignment: .trailing)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                bottomLeft: 5.0, bottomRight: 5.0)
                                                .stroke(ColorConstants.Gray100,
                                                        lineWidth: 2))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                   bottomLeft: 5.0,
                                                                   bottomRight: 5.0)
                                                .fill(ColorConstants.LightBlueA700))
                                        .padding(.leading, getRelativeWidth(10.0))
                                    Text(StringConstants.kLblJs)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(19.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(1.0))
                                        .padding(.horizontal, getRelativeWidth(9.0))
                                }
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeWidth(36.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                           bottomLeft: 18.0, bottomRight: 18.0)
                                        .fill(ColorConstants.LightBlueA700))
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(36.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(36.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(30.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblDashboard)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(34.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                       alignment: .leading)
                VStack {
                    Image("img_spinner")
                        .resizable()
                        .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(22.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 1.5, topRight: 1.5, bottomLeft: 1.5,
                                                   bottomRight: 1.5))
                        .padding(.horizontal, getRelativeWidth(157.0))
                    Text(StringConstants.kLblLoading)
                        .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray80099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.horizontal, getRelativeWidth(157.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(52.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(253.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        VStack {
                            Text(StringConstants.kLbl32)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(15.0))
                            Text(StringConstants.kLblDashboard)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                        }
                        .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(39.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(6.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        Spacer()
                        VStack {
                            Text(StringConstants.kLbl3)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(17.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(14.0))
                            Text(StringConstants.kLblPayments)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(39.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(6.0))
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLbl2)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(3.0))
                            Text(StringConstants.kLblCards)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(27.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(35.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(9.0))
                        .padding(.trailing, getRelativeWidth(30.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(84.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100Cc)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(84.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(312.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
