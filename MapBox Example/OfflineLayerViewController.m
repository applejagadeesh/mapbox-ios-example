//
//  OfflineLayerViewController.m
//  MapBox Example
//
//  Created by Justin Miller on 4/5/12.
//  Copyright (c) 2012 MapBox / Development Seed. All rights reserved.
//

#import "OfflineLayerViewController.h"

#import "RMMapView.h"
#import "RMMBTilesSource.h"

@implementation OfflineLayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    RMMBTilesSource *offlineSource = [[RMMBTilesSource alloc] initWithTileSetURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"control-room-0.2.0" ofType:@"mbtiles"]]];

    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:offlineSource];
    
    mapView.zoom = 2;
    
    mapView.autoresizingMask = UIViewAutoresizingFlexibleHeight;

    mapView.adjustTilesForRetinaDisplay = YES;
    
    mapView.viewControllerPresentingAttribution = self;

    [self.view addSubview:mapView];
}

@end