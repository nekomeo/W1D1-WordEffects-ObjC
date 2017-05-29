//
//  main.m
//  W1D1-WordEffects
//
//  Created by Elle Ti on 2017-05-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char inputChars[255];
        char again;
        int choice;
        
        printf("Which option would you like to pick?\n");
        scanf("%c", &again);
        
        while (again == 'y')
        {
            char *again = "Please choose from the following";
            switch (choice) {
                case 1:
                    NSLog(@"Input a string");
                    fgets(inputChars, 255, stdin);
                    NSString *uppercase = [inputChars uppercaseString];
                    NSLog(@"%@", uppercase);
                    break;
                case 2:
                    NSLog(@"Input a string");
                    fgets(inputChars, 255, stdin);
                    NSString *lowercase = [inputChars lowercaseString];
                    NSLog(@"%@", lowercase);
                    break;
                case 3:
                    NSLog(@"Enter a number");
                    fgets(inputChars, 255, stdin);
                    NSNumberFormatter *stringToNumber = [[NSNumberFormatter alloc] init];
                    stringToNumber.numberStyle = NSNumberFormatterDecimalStyle;
                    NSNumber *myNumber = [stringToNumber numberFromString:@"42"]; // Change this once you understand what's going on
                    break;
                case 4:
                    NSLog(@"Enter a word");
                default:
                    break;
            }
        }
    }
    return 0;
}
