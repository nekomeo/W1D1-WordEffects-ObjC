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
        // 255 Unit long array of characters
        char inputChars[255];
        char play[255];
        int choice;
        
        printf("Would you like to pick? ");
        fgets(play, 255, stdin);
        strtok(play, "\n");
        NSMutableString *convertedPlay = [NSMutableString stringWithUTF8String:play];
        
        
        NSLog(@"Input a string");
        fgets(inputChars, 255, stdin);
        strtok(inputChars, "\n");
        NSString *convertedChar = [NSString stringWithUTF8String:inputChars];
        
        while ([[convertedPlay lowercaseString]  isEqual: @"y"])
        {
            NSLog(@"\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word count");
            scanf(" %d", &choice);
            
            switch (choice)
            {
                case 1: // Uppercase word entered
                {
                    NSString *uppercase = [convertedChar uppercaseString];
                    NSLog(@"%s uppercased is %@", inputChars, uppercase);
                    break;
                }
                case 2: // Lowercase word entered
                {
                    NSString *lowercase = [convertedChar lowercaseString];
                    NSLog(@"%s lowercased is %@", inputChars, lowercase);
                    break;
                }
                case 3: // Change number from string to int/float/etc.
                {
                    strtok(inputChars, "\n");
                    NSNumberFormatter *stringToNumber = [[NSNumberFormatter alloc] init];
                    stringToNumber.numberStyle = NSNumberFormatterNoStyle;
                    NSNumber *myNumber = [stringToNumber numberFromString:convertedChar];
                    NSLog(@"The string %@ is converted to %@", convertedChar, myNumber);
                    break;
                }
                case 4: // Canadianize - add ", eh?" to the end of the input
                {
                    strtok(inputChars, "\n");
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
                    NSLog(@"Without spaces: %@", newSentence);
                    break;
                }
                case 7: // Character count - Count the number of characters in the string
                {
                    NSUInteger *characterCount = [convertedChar length];
                    NSLog(@"Number of characters is: %lu", characterCount);
                }
                default:
                    break;
            }
//            NSLog(@"\nWould you like to play again? (y/n)");
            
            
            char playA[255];
            
            fgets(playA, 255, stdin);
            strtok(playA, "\n");
//            convertedPlay = [NSMutableString stringWithUTF8String:playA];
            
            
            
        }
    }
    return 0;
}
