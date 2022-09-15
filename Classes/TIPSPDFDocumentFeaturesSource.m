//
//  NSObject_PSPDFDocumentFeaturesSource+TIPSPDFDocumentFeaturesSource.m
//  pspdfkit
//
//  Created by Abdullah Al Faqeir on 14/09/2022.
//  Copyright © 2022 PSPDFKit GmbH. All rights reserved.
//

#import "TIPSPDFDocumentFeaturesSource.h"

@implementation TIPSPDFDocumentFeaturesSource

- (instancetype)init {
    return [self initWithDict:@{}];
}

- (instancetype)initWithDict:(NSDictionary *)features {
    self = [super init];
    for (NSString *key in features){
        NSLog(@"[WARN] features => %@ = %@",key,[features[key] boolValue] ? @"true" : @"false");
        [self setValue:features[key] forKey:key];
    }
    [[self features] updateFeatures];
    return self;
}

@synthesize features;
@synthesize canModify;
@synthesize canPrint;
@synthesize canEditBookmarks;
@synthesize canFillForms;
@synthesize canEditAnnotations;
@synthesize canUseDocumentEditor;
@synthesize canShowAnnotationReplies;
@synthesize canShowAnnotationReviews;
@synthesize canExtractTextAndImages;

@end
