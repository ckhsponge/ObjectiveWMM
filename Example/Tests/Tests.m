//
//  ObjectiveWMMTests.m
//  ObjectiveWMMTests
//
//  Created by Christopher Hobbs on 11/09/2018.
//  Copyright (c) 2018 Christopher Hobbs. All rights reserved.
//

// https://github.com/Specta/Specta

@import ObjectiveWMM;

SpecBegin(InitialSpecs)

describe(@"has declination", ^{
    it(@"in San Francisco", ^{
        CLLocation *location = [[CLLocation alloc] initWithLatitude:37.7749 longitude:-122.4194];
        expect([CCMagneticModel declinationForLocation:location]).to.beCloseToWithin(13.4, 0.3);
    });
});

SpecEnd

