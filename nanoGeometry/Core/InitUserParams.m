function InitUserParams()
%% Set initial parameters that can be modified by user in the GUI.

    global cylindersPerLevel interCoef cylinderFormula 
    global simComplexity simComplexities TimePeriod GTimeStep diffCoef np charge plotTimeStep
    
    cylindersPerLevel = 2;    
    interCoef = 1;
    cylinderFormula = {
        '% Following values can be used:', ...
        '%', ...
        '% cyl = Current cylinder.', ...
        '% lvl = Level of the current cylinder.', ...
        '% H = Height of cylinder.', ...
        '% lvlH = Height of the level.', ...
        '% botArea(lvl) = Area of the bottom polygon of level.', ...
        '% topArea(lvl) = Area of the top polygon of level.', ...
        '% interArea(lvl) = Area of the intersection of bottom and top level polygons.', ...
        '% volume(lvl) = Volume of the level.', ...
        '% xyShift(lvl) = Distance between the centers of the bottom and top polygons of the level on XY plane.', ...
        '', ...
        '%%%%%%%%%%%%%%%%% Code start %%%%%%%%%%%%%%%%%', ...
        '', ...
        'if (mod(cyl, 2) == 0)', ...
        '    R(cyl) = sqrt(topArea(lvl) / pi);', ...
        'else', ...
        '    R(cyl) = sqrt(interArea(lvl) / pi) * interCoef;', ...
        'end', ...
        '', ...
        '%%%%%%%%%%%%%%%%% Code end %%%%%%%%%%%%%%%%%', ...
        '', ...
        '% Other possible formulas', ...
        '%', ...
        '% R(cyl) = sqrt(volume(lvl) / (pi * H));'}';
    simComplexities = struct('Simple', 1, ...
                         'Complex', 2);
    simComplexity = 1;
    TimePeriod = 10;
    GTimeStep = 0.025;
    diffCoef = 0.3;
    np = 3000;
    charge = 0;
    plotTimeStep = 0.1;
    
end