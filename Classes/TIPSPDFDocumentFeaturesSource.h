//
//  NSObject_PSPDFDocumentFeaturesSource+TIPSPDFDocumentFeaturesSource.h
//  pspdfkit
//
//  Created by Abdullah Al Faqeir on 14/09/2022.
//  Copyright © 2022 PSPDFKit GmbH. All rights reserved.
//


#import <PSPDFKitUI/PSPDFKitUI.h>
#import <TitaniumKit/TitaniumKit.h>


@interface TIPSPDFDocumentFeaturesSource : NSObject <PSPDFDocumentFeaturesSource>

- (instancetype)initWithDict:(NSDictionary *)features NS_DESIGNATED_INITIALIZER;

@end
