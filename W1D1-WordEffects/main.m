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
        char play;
        int choice;
        
        printf("Which option would you like to pick?\n");
        scanf("%c", &choice);
        
        if (play == 'y')
        {
            NSLog(@"Uppercase");
            NSLog(@"Lowercase");
            NSLog(@"Numberize");
            NSLog(@"Canadianize");
            NSLog(@"Respond");
            NSLog(@"De-Space-It");
            scanf("", &choice);
            
//            char *again = "Please choose from the following";
//            fgets(<#char *restrict#>, <#int#>, <#FILE *#>) // fgets the choice you want to pick
            switch (choice)
            {
                case 1: // Uppercase word entered
                NSLog(@"Input a string");
                {
                    fgets(inputChars, 255, stdin);
                    NSString *convertedChar = [NSString stringWithUTF8String:inputChars];
                    NSString *uppercase = [convertedChar uppercaseString];
                    NSLog(@"%s uppercased is %@", inputChars, uppercase);
                }
                    break;
                case 2: // Lowercase word entered
                {
                    NSLog(@"Input a string");
                    fgets(inputChars, 255, stdin);
                    NSString *convertedChar = [NSString stringWithUTF8String:inputChars];
                    NSString *lowercase = [convertedChar lowercaseString];
                    NSLog(@"%s lowercased is %@", inputChars, lowercase);
                }
                    break;
                case 3: // Change number from string to int/float/etc.
                {
                    NSLog(@"Enter a number");
                    fgets(inputChars, 255, stdin);
                    strtok(inputChars, "\n");
                    NSString *convertedChar = [NSString stringWithUTF8String:inputChars];
                    NSNumberFormatter *stringToNumber = [[NSNumberFormatter alloc] init];
                    stringToNumber.numberStyle = NSNumberFormatterNoStyle;
                    NSNumber *myNumber = [stringToNumber numberFromString:convertedChar];
                    NSLog(@"The string %@ is converted to %@", convertedChar, myNumber);
                }
                    break;
                case 4: // Canadianize - add ", eh?" to the end of the input
                {
                    NSLog(@"Enter a string");
                    fgets(inputChars, 255, stdin);
                    strtok(inputChars, "\n");
                    NSMutableString *convertedChar = [NSString stringWithUTF8String:inputChars];
                    NSMutableString *canadianize = [convertedChar stringByAppendingString:@", eh?"];
                    NSLog(@"String Canadianized is: %@", canadianize);
                }
                    break;
                case 5: // Respond to a question or statement
                {
                    NSLog(@"Enter a string");
                    fgets(inputChars, 255, stdin);
                    NSString *sentence = [NSString stringWithUTF8String:inputChars];
                    if ([sentence containsString:@"?"])
                    {
                        NSLog(@"I don't know");
                    }
                    else if ([sentence containsString:@"!"])
                    {
                        NSLog(@"Whoa, calm down!");
                    }
                    else
                    {
                        NSLog(@"%@", sentence);
                    }
                }
                default:
                    break;
            }
//            printf("Would you like to play again? (y/n)\n");
//            scanf(" &c", again);
        }
    }
    
//            char name[10];
//            printf("Who are you? ");
//            fgets(name, 10, stdin);
//            printf("Glad to meet you %s\n", name);
    return 0;
}
