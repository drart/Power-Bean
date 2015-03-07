// Copyright © 2012 Travis Kirton
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions: The above copyright
// notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

#import "C4Workspace.h"

@implementation C4WorkSpace
{
    C4Switch *aSwitch;
    C4Label *aText;
    C4Label *beanName;
    C4Image *lightblue;
}

-(void)setup
{
    aText = [C4Label labelWithText:@"Bean Power"];
    [aText sizeToFit];
    CGPoint p = CGPointMake(self.canvas.center.x, self.canvas.center.y - 100);
    aText.center = p;
    
    lightblue = [C4Image imageNamed:@"lightblue.png"];
    lightblue.center = self.canvas.center;
    [lightblue setOrigin:CGPointMake(0, 50)];
    [lightblue setWidth:50.0f];
    [lightblue setAlpha:0.2f];
    
    aSwitch = [C4Switch switch];
    aSwitch.center = self.canvas.center;
    [aSwitch runMethod:@"switchOnOff:" target:self forEvent:VALUECHANGED];
    
    [self.canvas addControl:lightblue];
    [self.canvas addControl:aText];
    [self.canvas addControl:aSwitch];

}

-(void)switchOnOff:(C4Switch *)sender {
    if (sender.isOn) {
        C4Log(@"lllallala");
    }
    else {
        C4Log(@"loolooo");
    }
}

@end
