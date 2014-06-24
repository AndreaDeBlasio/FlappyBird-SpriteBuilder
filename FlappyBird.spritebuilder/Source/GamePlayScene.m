#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*) [CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    /* per chiamare un metodo [ObjectName methodName], esempio [character jump];
     per chiamare un metodo e passare ad un parametro [objective methodName: parameter];
     esempio [self addChild: character];
     */
     
     
     
     
    
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    [character flap];
}



@end
