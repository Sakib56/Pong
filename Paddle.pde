class Paddle {
    PVector pos;
    float pWidth = 200;
    float pHeight = 30;

    Paddle() {
        pos = new PVector(width/2, 9*height/10);
    }

    void display() {
        rectMode(CENTER);
        rect(mouseX, pos.y, pWidth, pHeight);
    }

    void checkHit(Ball b) {
        boolean ballHit = b.pos.y >= pos.y-pHeight*0.5 && b.pos.y <= pos.y+pHeight*0.5
            && b.pos.x >= mouseX-pWidth*0.5 && b.pos.x <= mouseX+pWidth*0.5;

        if (ballHit) {
            b.vel.set(b.vel.x, -b.vel.y);
            b.vel = b.vel.mult(1.1);
            pWidth = pWidth > 50 ? pWidth *= 0.9 : 50;
            score++;
        }
    }
}
