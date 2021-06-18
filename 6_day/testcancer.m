clc;
Feauture = cancerInputs(:,4);
class = cancerDetection(Feauture);

class = vec2ind(class);