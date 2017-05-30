//
//  main.m
//  W1D1-WordEffects
//
//  Created by Elle Ti on 2017-05-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

void mainMenu()
{
    printf("1. Uppercase\n");
    printf("2. Lowercase\n");
    printf("3. Numberize\n");
    printf("4. Canadianize\n");
    printf("5. Respond\n");
    printf("6. De-Space-It\n");
    printf("7. Character count\n");
    printf("0. Exit\n");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 Unit long array of characters
        char inputChars[255];
        
        NSLog(@"Input a string"); // Limit input to 255 characters
        fgets(inputChars, 255, stdin);
        strtok(inputChars, "\n");
        NSString *convertedChar = [NSString stringWithUTF8String:inputChars]; // Convert char array to an NSString object
        
        int selection;

        do
        {
            mainMenu();
            scanf(" %i", &selection);
            
            switch (selection)
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
                    break;
                }
                case 0:
                    NSLog(@"Exiting");
                    break;
                default:
                    break;
            }
        }
        while (selection != 0);
        }
    return 0;
}
