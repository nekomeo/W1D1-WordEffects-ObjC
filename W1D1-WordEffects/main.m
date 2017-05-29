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
                    NSString *convertedChar = [NSString stringWithUTF8String:inputChars];
                    NSString *uppercase = [convertedChar uppercaseString];
                    NSLog(@"%@", uppercase);
                    break;
                
//                default:
                    break;
            }
            printf("Would you like to play again? (y/n)\n");
            scanf(" &c", again);
        }
    }
    return 0;
}
