
$fa = 1;
$fs = 0.4;
radius = 15;
angle_increment = 72;

function get_pentagon_points(r) = [
    [r * cos(angle_increment * 0),
     r * sin(angle_increment * 0)],
    [r * cos(angle_increment * 1),
     r * sin(angle_increment * 1)],
    [r * cos(angle_increment * 2),
     r * sin(angle_increment * 2)],
    [r * cos(angle_increment * 3),
     r * sin(angle_increment * 3)],
    [r * cos(angle_increment * 4),
     r * sin(angle_increment * 4)],
    [r * cos(angle_increment * 5),
     r * sin(angle_increment * 5)]];

linear_extrude(radius, center=true, convexity = 10, twist = 36)
polygon(get_pentagon_points(radius));