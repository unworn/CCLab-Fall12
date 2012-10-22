#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    
    ofBackground(255, 255, 255);
    ofSetCircleResolution(500);
    ofSetFrameRate(60);
    
    posX = ofGetWidth()/2;
    posY = ofGetHeight()/2;

}

//--------------------------------------------------------------
void testApp::update(){
    posX++;


}

//--------------------------------------------------------------
void testApp::draw(){
    
    ofNoFill();
	ofSetRectMode(OF_RECTMODE_CENTER); // center around the position
    ofSetColor(250, 0, 117);
    ofCircle(posX, posY, 50);
    
    ofSetColor(0, 174, 239);
    ofFill();
    ofRect(posX-150, posY, 100, 100);
    
    ofSetColor(255,242,0);
    ofFill();
    ofTriangle(posX+100,posY+50,posX+150,posY-50,posX+200,posY+50);

}

//--------------------------------------------------------------
void testApp::keyPressed(int key){

}

//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void testApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void testApp::dragEvent(ofDragInfo dragInfo){ 

}