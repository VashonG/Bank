import SwiftUI

struct PaymentsView: View {
    @StateObject var paymentsViewModel = PaymentsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        VStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(10.0),
                                       height: getRelativeWidth(10.0), alignment: .trailing)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray100,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.LightBlueA700))
                                .padding(.leading, getRelativeWidth(10.0))
                            Text(StringConstants.kLblJs)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(15.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(1.0))
                                .padding(.horizontal, getRelativeWidth(9.0))
                        }
                        .frame(width: getRelativeWidth(36.0), height: getRelativeWidth(36.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                   bottomRight: 18.0)
                                .fill(ColorConstants.LightBlueA700))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblPayments)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(34.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100)
                    ZStack(alignment: .bottomLeading) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblTemplates)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(4.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            VStack {
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 4, id: \.self) { index in
                                                Content6Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(322.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(404.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(11.0))
                            Text(StringConstants.kLblRecent)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            VStack {
                                ZStack(alignment: .bottomTrailing) {
                                    VStack {
                                        HStack {
                                            HStack {
                                                Button(action: {}, label: {
                                                    HStack(spacing: 0) {
                                                        Text(StringConstants.kLbl28)
                                                            .font(FontScheme
                                                                .kSFProSemibold(size: getRelativeHeight(20.0)))
                                                            .fontWeight(.semibold)
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(12.0))
                                                            .padding(.vertical,
                                                                     getRelativeHeight(12.0))
                                                            .padding(.all, getRelativeWidth(12.0))
                                                            .foregroundColor(ColorConstants
                                                                .Bluegray400)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(48.0),
                                                                   height: getRelativeWidth(48.0),
                                                                   alignment: .topLeading)
                                                            .background(RoundedCorners(topLeft: 12.0,
                                                                                       topRight: 12.0,
                                                                                       bottomLeft: 12.0,
                                                                                       bottomRight: 12.0)
                                                                    .fill(ColorConstants
                                                                        .Bluegray400))
                                                    }
                                                })
                                                .frame(width: getRelativeWidth(48.0),
                                                       height: getRelativeWidth(48.0),
                                                       alignment: .topLeading)
                                                .background(RoundedCorners(topLeft: 12.0,
                                                                           topRight: 12.0,
                                                                           bottomLeft: 12.0,
                                                                           bottomRight: 12.0)
                                                        .fill(ColorConstants.Bluegray400))
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Text(StringConstants.kLblSamanthaClarke)
                                                        .font(FontScheme
                                                            .kSFProSemibold(size: getRelativeHeight(17.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Black900)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(140.0),
                                                               height: getRelativeHeight(17.0),
                                                               alignment: .topLeading)
                                                    Text(StringConstants.kLblHappyBirthday)
                                                        .font(FontScheme
                                                            .kSFProRegular(size: getRelativeHeight(15.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray80099)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(112.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(12.0))
                                                        .padding(.trailing, getRelativeWidth(10.0))
                                                }
                                                .frame(width: getRelativeWidth(140.0),
                                                       height: getRelativeHeight(45.0),
                                                       alignment: .bottom)
                                                .padding(.leading, getRelativeWidth(16.0))
                                            }
                                            .frame(width: getRelativeWidth(204.0),
                                                   height: getRelativeHeight(48.0),
                                                   alignment: .center)
                                            Spacer()
                                            Text(StringConstants.kLbl6)
                                                .font(FontScheme
                                                    .kSFProSemibold(size: getRelativeHeight(13.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Gray8004c)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(6.0),
                                                       height: getRelativeHeight(13.0),
                                                       alignment: .topLeading)
                                                .padding(.vertical, getRelativeHeight(17.0))
                                        }
                                        .frame(width: getRelativeWidth(322.0),
                                               height: getRelativeHeight(48.0), alignment: .center)
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                        Divider()
                                            .frame(width: getRelativeWidth(278.0),
                                                   height: getRelativeHeight(1.0),
                                                   alignment: .trailing)
                                            .background(ColorConstants.Gray8005b)
                                            .padding(.top, getRelativeHeight(11.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(358.0),
                                           height: getRelativeHeight(60.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(9.0))
                                    Text(StringConstants.kLbl35)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .padding(.leading, getRelativeWidth(20.0))
                                        .padding(.vertical, getRelativeHeight(20.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(64.0),
                                               height: getRelativeWidth(64.0),
                                               alignment: .topLeading)
                                        .background(ColorConstants.LightBlueA700)
                                        .shadow(color: ColorConstants.LightBlueA7003d, radius: 48,
                                                x: 0, y: 12)
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(294.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(69.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(16.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                Content7Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(330.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(7.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(384.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(358.0), height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            VStack {
                                Text(StringConstants.kLbl32)
                                    .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                Text(StringConstants.kLblDashboard)
                                    .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(56.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(6.0))
                            }
                            .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(39.0),
                                   alignment: .top)
                            .padding(.leading, getRelativeWidth(16.0))
                            VStack {
                                Text(StringConstants.kLbl3)
                                    .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.LightBlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(17.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(14.0))
                                Text(StringConstants.kLblPayments)
                                    .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.LightBlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(39.0),
                                   alignment: .top)
                            .padding(.leading, getRelativeWidth(100.0))
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
                            .padding(.leading, getRelativeWidth(111.0))
                            .padding(.trailing, getRelativeWidth(30.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(84.0),
                               alignment: .bottomLeading)
                        .background(ColorConstants.Gray100Cc)
                        .padding(.top, getRelativeHeight(609.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .background(ColorConstants.Gray100)
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

struct PaymentsView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentsView()
    }
}
