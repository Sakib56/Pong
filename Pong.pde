boolean gameStarted;
int score;

Ball ball;
Paddle paddle;

void setup() {
    size(1280, 720);
    gameStarted = false;
    score = 0; 
    paddle = new Paddle();
    ball = new Ball();
    frameRate(120);
}

void draw() {
    println(ball.vel.x);
    if (!ball.outOfBounds) {
        if (gameStarted) {
            background(255);
            fill(0);
            
            textAlign(LEFT);
            textSize(28);
            text("Score: "+score, width*0.02, height*0.05);

            paddle.display();
            paddle.checkHit(ball);

            ball.display();
            ball.update();
            ball.edges();
        } else {
            background(0);
            fill(255);

            textAlign(CENTER);
            textSize(28);
            text("PONG\nclick to play", width*0.5, height*0.5);
        }
    } else {
        background(0);
        fill(255);
        textAlign(CENTER);
        textSize(28);
        text("RIP\nScore: "+score+"\npress any key to restart", width*0.5, height*0.4);
    }
}

void mousePressed() {
    gameStarted = true;
}

void keyPressed() {
    setup();
}
