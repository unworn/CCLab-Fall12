//
//  ball.h
//  CCLabWk9-shapesClass
//
//  Created by Nidhi Malhotra on 10/24/12.
//  Copyright (c) 2012 Unworn Studio. All rights reserved.
//

#ifndef CCLabWk9_shapesClass_ball_h //prevent the compiler from using copying the file multiple times
#define CCLabWk9_shapesClass_ball_h

#include "ofMain.h" 
//gives you access to all the methods and objects of openFrameworks. This is what makes your code oF-based and not just C++ code and where the magic happens.

class ball {
    
public:
    
    //constructor
    ball(); //initializing an object
    
    void update();
    void draw();
    
    float posX, posY, speed;
    
};
//always add the semi-colon at the end of a class definition


#endif
