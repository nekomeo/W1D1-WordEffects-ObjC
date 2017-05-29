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
        //        a number, to indicate which operation to do
        //            a string, to operate on
        
        // 255 unit long array of characters
        //        char inputChars[255];
        //
        //        printf("Input a string");
        //        // Limit input to max 255 characters
        //        fgets(inputChars, 255, stdin);
        //
        //        // Print as a c string
        //        printf("Your string is %s\n", inputChars);
        //
        //        // Convert char array to an NSString object
        //        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        //
        //        // Print NSString object
        //        NSLog(@"Input was %@", inputString);
        
        //        1. Uppercase
        //        Take whatever string the user inputs and MAKE IT LOUDER! Go have a look at the documentation or the header files for NSString, and look for methods that can help with this. Print the resulting string.
        //
        //            2. Lowercase
        //            Take whatever text the user inputs and make it all lowercase. Print the resulting string.
        //
        //            3. Numberize
        //            Take whatever text the user inputs, for example the string "10", and convert it to a number (e.g. the integer 10), if possible. Print the resulting number. Consider what inputs will give a valid number, and if you are able to tell if the conversion was successful or not. There is more than one way to do this conversion.
        //
        //                4. Canadianize
        //                Take the user's input, and append ", eh?" to it. Print the resulting string.
        //
        //                5. Respond
        //                If the user input ends with a question mark, answer "I don't know". If the input ends with an exclaimation point, respond with "Whoa, calm down!".
        //
        //                6. De-Space-It
        //                Replace all spaces with "-". Print the resulting string.
        
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
        
        
        //        char name[10];
        //        printf("Who are you? ");
        //        fgets(name, 10, stdin);
        //        printf("Glad to meet you %s\n", name);
    }
    return 0;
}
