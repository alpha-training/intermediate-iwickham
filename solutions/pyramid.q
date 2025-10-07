newrow:{{y[z]+max(x[z];x[z+1])}[x;y]each til count y}

pyr:{first (newrow/)reverse x}

/
Kieran feedback
pyr:{first{y+(1_x)|-1_x}/[reverse x]}