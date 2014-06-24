#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{

    character = (Character*) [CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    
    timeSinceObstacle = 0.0f;
     
     
    
}

-(void)update:(CCTime)delta
{

    timeSinceObstacle += delta;
    
    if (timeSinceObstacle > 2.0f) {
        [self addObstacle];
        timeSinceObstacle = 0.0f;
    }

}

// put new methods here

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    [character flap];
}



@end














 /* per chiamare un metodo [ObjectName methodName], esempio [character jump];
     per chiamare un metodo e passare ad un parametro [objective methodName: parameter];
     esempio [self addChild: character];
     */
