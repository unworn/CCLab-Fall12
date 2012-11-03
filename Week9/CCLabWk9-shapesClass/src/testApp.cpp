#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    
    ofBackground(255, 255, 255);
    ofSetCircleResolution(500);
    ofSetFrameRate(60);    

}

//--------------------------------------------------------------
void testApp::update(){
    myBall.update();
}

//--------------------------------------------------------------
void testApp::draw(){

        myBall.draw();
//    myBall.posX = mouseX;
//    myBall.posY = mouseY;

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