//
//  ball.cpp
//  CCLabWk9-shapesClass
//
//  Created by Nidhi Malhotra on 10/24/12.
//  Copyright (c) 2012 Unworn Studio. All rights reserved.
//

#include "ball.h"

ball::ball(){
    speed = 5;
    
    posX = ofRandom(ofGetWidth());
    posY = ofRandom(ofGetHeight());
    
    
}

void ball::update(){
    posX+= speed;
    
    if (( posX >= ofGetWidth()) || ( posX <= 0)) {
        speed *= -1;
    }

}

void ball::draw(){
    ofSetRectMode(OF_RECTMODE_CENTER); // center around the position
    ofSetColor(250, 0, 117);
    ofCircle(posX, posY, 10);        
}
