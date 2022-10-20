import SwiftUI

struct TransactionsView: View {
    @StateObject var transactionsViewModel = TransactionsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    HStack {
                        HStack {
                            Text(StringConstants.kLbl18)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(8.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblDashboard)
                                .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(88.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.horizontal, getRelativeWidth(22.0))
                    Text(StringConstants.kLblChecking)
                        .font(FontScheme.kSFProBold(size: getRelativeHeight(34.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(34.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                       alignment: .leading)
                .background(ColorConstants.Gray100)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            HStack {
                                Text(StringConstants.kLbl19)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray80099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                Text(StringConstants.kLblSearch)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray80099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(54.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(22.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(8.0))
                            Spacer()
                            Text(StringConstants.kLbl20)
                                .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray80099)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(17.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(7.0))
                                .padding(.trailing, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(36.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Gray6001e))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        ZStack(alignment: .topLeading) {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblJul282022)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(118.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(4.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                VStack {
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 6, id: \.self) { index in
                                                    Content3Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(326.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(536.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(11.0))
                                Text(StringConstants.kLblAug32022)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(115.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(28.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                VStack {
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 5, id: \.self) { index in
                                                    Content4Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(326.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(460.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(11.0))
                                Text(StringConstants.kLblAug122022)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(326.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(24.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                VStack {
                                    VStack(spacing: 0) {
                                        ScrollView(.vertical, showsIndicators: false) {
                                            LazyVStack {
                                                ForEach(0 ... 3, id: \.self) { index in
                                                    Content5Cell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(326.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(308.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(12.0))
                            }
                            .frame(width: getRelativeWidth(358.0),
                                   height: UIScreen.main.bounds.height, alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(16.0))
                            HStack {
                                VStack {
                                    Text(StringConstants.kLbl32)
                                        .font(FontScheme
                                            .kSFProMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.LightBlueA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(15.0))
                                    Text(StringConstants.kLblDashboard)
                                        .font(FontScheme
                                            .kSFProMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.LightBlueA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(56.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(6.0))
                                }
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(39.0), alignment: .top)
                                .padding(.leading, getRelativeWidth(16.0))
                                VStack {
                                    Text(StringConstants.kLbl3)
                                        .font(FontScheme
                                            .kSFProMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(14.0))
                                    Text(StringConstants.kLblPayments)
                                        .font(FontScheme
                                            .kSFProMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(48.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeHeight(39.0), alignment: .top)
                                .padding(.leading, getRelativeWidth(100.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLbl2)
                                        .font(FontScheme
                                            .kSFProMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(3.0))
                                    Text(StringConstants.kLblCards)
                                        .font(FontScheme
                                            .kSFProMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(27.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(27.0),
                                       height: getRelativeHeight(35.0), alignment: .top)
                                .padding(.leading, getRelativeWidth(111.0))
                                .padding(.trailing, getRelativeWidth(30.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(84.0), alignment: .topLeading)
                            .background(ColorConstants.Gray100Cc)
                            .padding(.bottom, getRelativeHeight(827.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Gray100)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray100)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
