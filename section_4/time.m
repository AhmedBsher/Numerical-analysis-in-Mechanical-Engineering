function t = time(h, v0, g)
    % Compute the time required to reach a specified height h
    % given initial speed v0 and acceleration due to gravity g.
    
    % Calculate the discriminant
    discriminant = v0^2 - 2 * g * h;
    
    if discriminant < 0
        error('The object does not reach the specified height with the given initial speed.');
    elseif discriminant == 0
        % One real solution
        t = v0 / g;
    else
        % Two real solutions
        t1 = (v0 + sqrt(discriminant)) / g;
        t2 = (v0 - sqrt(discriminant)) / g;
        t = [t1; t2];
    end
end