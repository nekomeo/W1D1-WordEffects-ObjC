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
        char choice [255];
        char playAgain [255];
        
        int selection = 1;
        
        NSMutableString *convertedChar = [[NSMutableString alloc] init];
        NSMutableString *convertPlay = [[NSMutableString alloc] initWithString:@"y"];
        
        while ([convertPlay isEqualToString:@"y"])
        {
            NSLog(@"Input a string:"); // Limit input to 255 characters
            fgets(inputChars, 255, stdin);
            strtok(inputChars, "\n");
            convertedChar = [NSMutableString stringWithUTF8String:inputChars]; // Convert char array to an NSString object
            
            NSLog(@"Enter a choice:\n1) UPPERCASE\n2) lowercase\n3) numberize\n4) Canadianize it\n5) Respond\n6) De-Space-It\n7) Character count");
            fgets(choice, 255, stdin);
            strtok(choice, "\n");
            NSString *convertChoice = [NSString stringWithUTF8String:choice];
            selection = [convertChoice intValue];
            
            switch (selection)
            {
                case 1: // Change to all uppercase.
                {
                    NSString *upperCase = [convertedChar uppercaseString];
                    NSLog(@"Uppercase is: %@", upperCase);
                    break;
                }
                case 2: // Change to all lowercase.
                {
                    NSString *lowerCase = [convertedChar lowercaseString];
                    NSLog(@"Lowercase is: %@", lowerCase);
                    break;
                }
                case 3: // Change number from string to int/float/etc.
                {
                    NSInteger numberized = [convertedChar integerValue];
                    
                    if (numberized == 0)
                    {
                        NSLog(@"Cannot convert to number");
                    }
                    else
                    {
                        NSLog(@"%@ as a string is converted to the integer %ld", convertedChar, numberized);
                    }
                    break;
                }
                case 4: // Add ', eh?' to the end of input.
                {
                    NSString *canadianize = [convertedChar stringByAppendingString:@", eh?"];
                    NSLog(@"String Canadianized is: %@", canadianize);
                    break;
                }
                case 5: // Respond to a question or statement
                {
                    if ([convertedChar containsString:@"?"])
                    {
                        NSLog(@"I don't know");
                    }
                    else if ([convertedChar containsString:@"!"])
                    {
                        NSLog(@"Whoa, calm down!");
                    }
                    else
                    {
                        NSLog(@"%@", convertedChar);
                    }
                    break;
                }
                case 6: // De-Space-It - Replace " " with "-"
                {
                    NSString *newSentence = [convertedChar stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"With -'s: %@", newSentence);
                    break;
                }
                case 7:
                {
                    NSInteger characterCount = [convertedChar length];
                    NSLog(@"Total number of characters is: %lu", characterCount);
                    break;
                }
                default:
                break;
            }
            
            NSLog(@"Would you like to play again? (y/n)");
            fgets(playAgain, 255, stdin);
            strtok(playAgain, "\n");
            convertPlay = [NSMutableString stringWithUTF8String:playAgain];
            
        }
    }
    return 0;
}
