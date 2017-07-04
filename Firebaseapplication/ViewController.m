//
//  ViewController.m
//  Firebaseapplication
//
//  Created by Felix-Madhuri on 04/07/17.
//  Copyright © 2017 felix-its. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.reference = [[FIRDatabase database]referenceFromURL:@"https://studentinformation-3e7a3.firebaseio.com"];
    
    /*
    
    NSMutableDictionary *d1=[[NSMutableDictionary alloc]init];
    [d1 setValue:@"Madhuri" forKey:@"name"];
    [d1 setValue:@1 forKey:@"rollno"];
    [d1 setValue:@"Pune" forKey:@"address"];
    
    NSMutableDictionary *d2=[[NSMutableDictionary alloc]init];
    [d2 setValue:@"Sonal" forKey:@"name"];
    [d2 setValue:@2 forKey:@"rollno"];
    [d2 setValue:@"Hadpsar" forKey:@"address"];
    

    NSMutableDictionary *outerdic=[[NSMutableDictionary alloc]init];
    
    [outerdic setValue:d1 forKey:@"student1"];
    [outerdic setValue:d2 forKey:@"student2"];
    
    
    
    [[_reference child:@"studentInfo"]setValue:outerdic];
    
    */
    
    
    
    [[_reference child:@"studentInfo"]observeEventType:FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
        
        NSLog(@"%@",snapshot.value[@"name"]);
        
    }];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
