let x = 0;
let y = 0;
let g = 9.81;
let t;
let x0;
let y0; //-800
let alpha; //PI/4;
let L;
let A;
let E;
let m = 1; // Fulgens vægt (kg)
let u0;
let v0;

let r = [0, 0];

let mouseR = false;
let mouseP = false;
let pulled = false;
let birdFlying = false;
let mousePressedFlying = false;

function setup() {
    createCanvas(1440, 800);
    frameRate(60);
    rectMode(CENTER);
    textAlign(CENTER);
}

function draw() {
    clear();
    background(255);

    text("[R] for reset", 50, 50);
    text("Alpha: " + degrees(alpha) + "°", 100, 70);
    text("L: " + L + " m", 100, 90);
    text("E: " + E + " N", 100, 110);
    text("v0: " + v0 + " m/s", 100, 130);
    text("u0: " + u0 + " m/s", 100, 150);

    if(mousePressedFlying == true) {
        textSize(75);
        text("[R] for reset", width/2, height/2);
        textSize(12);
    }

    line(200, height-150, 200, mouseY); // line 1
    line(mouseX, mouseY, 200, mouseY); // line 2

    var line1 = dist(200, height-150, 200, mouseY);
    var line2 = dist(mouseX, mouseY, 200, mouseY);

    text(line2, (mouseX+(line2/2)), mouseY+30);
    text(line1, 200+30, (mouseY-(line1/2)));

    if(mouseR == false && mouseP == true) {
        line(200, height-150, mouseX, mouseY);
    }

    fill(255, 0, 0);
    if(x == 0 && y == 0 && pulled == true && mouseR == false) {
        circle(mouseX, mouseY, 20);
        L = dist(200, height-150, mouseX, mouseY) / 8;
        //x0 = mouseX;
        //y0 = -mouseY;
        x0 = 200; // Skal starte ved slangebøssen og ikke mouseX og Y
        y0 = -650;
        alpha = asin((line1) / dist(200, height-150, mouseX, mouseY));
        //alpha = atan(line1/line2);  
    }

    if(x == 0 && y == 0 && pulled == false) {
        circle(200, height-150, 20);
    }

    if(x > 0 && y > 0 && pulled == false) {
        circle(x, y, 20);
        fill(0);
        text("x: " + u0 + " * " + t + " + " + x0 + " = " + x, 500, 50);
        text("y: " + "-0.5" + " * " + g + " * " + (t*t) + " + " + v0 + " * " + t + " + " + -y0 + " = " + y, 500, 80);
    }  
    fill(0);

    if(mouseR == true && pulled == false && y < height-15) {
        kast(L);
    }
}


function mousePressed() {
    if(birdFlying == false) {
        mouseP = true;
        pulled = true;
        mousePressedFlying = false;
    } else {
        mousePressedFlying = true;
    }
}

function mouseReleased() {
    mouseR = true;
    birdFlying = true;
    mouseP = false;
    pulled = false;
}

function keyPressed() {
    if(key == 'r') {
        x = 0;
        y = 0;
        t = 0;
        x0 = 0;
        y0 = 0; //-800
        alpha = 0;
        L = 0;
        E = 0;
        m = 1; // Fulgens vægt (kg)
        u0 = 0;
        v0 = 0;

        mouseR = false;
        mouseP = false;
        pulled = false;
        birdFlying = false;
        mousePressedFlying = false;
    }
}

function kast(newL) {
    A = alpha;
    E = 50 * (newL * newL);
    u0 = sqrt((2*E)/(m*(1+(A*A))));
    v0 = A*(sqrt((2*E)/(m*(1+(A*A)))));

    x = u0 * t + x0;
    y = -0.5*g*(t*t)+v0*t+y0;

    y = -y;

    t = t + 0.25;

    r[0] = x;
    r[1] = y;

    //println(y);
    //println('-');
}