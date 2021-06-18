clc;clear;
fis = readfis('trafic.fis');
nord = 0;
sud = 1;
est = 0;
ouest = 0;

y= evalfis([nord sud est ouest],fis);
y = y> 0.5;
[val index] = min(y);

 switch index
          case 1 % nord
            disp('nord');
          case 2 % sud
            disp('sud');
          case 3 % est
            disp('est');
          case 4 % ouest
            disp('ouest');
 end