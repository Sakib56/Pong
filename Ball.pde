class Ball {
    PVector pos;
    PVector vel;
    boolean outOfBounds;
    int size = 50;
    float speed = 2;
    float[] speedList = {-speed, speed};

    Ball() {
        pos = new PVector(width/2, height/2);
        vel = new PVector(speedList[int(random(speedList.length))], speedList[int(random(speedList.length))]);
        outOfBounds = false;
    }

    void display() {
        ellipse(pos.x, pos.y, size, size);
    }

    void update() {
        pos = (pos.add(vel));
    }

    void edges() {
        if (pos.x < 0 || pos.x > width) {
            vel.set(-vel.x, vel.y);
        }
        if (pos.y < 0) {
            vel.set(vel.x, -vel.y);
        } 
        if (pos.y > height) {
            outOfBounds = true;
        }
    }
}
