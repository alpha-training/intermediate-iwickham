addPos:{update pos:sums size*?[side=`B;1;-1] by sym from x}

addPosfs:{![x;();(enlist `sym)!enlist `sym;(enlist `pos)!enlist (+\;(*;`size;(?;(=;`side;(enlist `B));1;-1)))]}
