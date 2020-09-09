for land=[20:25]
    total=60;
    nonland=total-land;

    denominator=(total*(total-1)*(total-2)*(total-3)*(total-4)*(total-5)*(total-6));

    a=((nonland)*(nonland-1)*(nonland-2)*(nonland-3)*(nonland-4)*(nonland-5)*(nonland-6))/(denominator) ; %prob 0

    b1=(land*(nonland)*(nonland-1)*(nonland-2)*(nonland-3)*(nonland-4)*(nonland-5))/denominator;
    b=(1-((1-b1)^7)); %prob 1
    
    aCorrect=a;
    bCorrect=(perm(land,1)*perm(nonland,6))/perm(total,7);
    cCorrect=(perm(land,2)*perm(nonland,5))/perm(total,7);
    dCorrect=(perm(land,3)*perm(nonland,4))/perm(total,7);
    eCorrect=(perm(land,4)*perm(nonland,3))/perm(total,7);
    fCorrect=(perm(land,5)*perm(nonland,2))/perm(total,7);
    gCorrect=(perm(land,6)*perm(nonland,1))/perm(total,7);
  
    
    c1=(land*(land-1)*(nonland)*(nonland-1)*(nonland-2)*(nonland-3)*(nonland-4))/denominator;
    c=(1-((1-c1)^21)); %prob 1

    d1=(land*(land-1)*(land-2)*(nonland)*(nonland-1)*(nonland-2)*(nonland-3))/denominator;
    d=(1-((1-d1)^35)); %prob 1

    e1=(land*(land-1)*(land-2)*(land-3)*(nonland)*(nonland-1)*(nonland-2))/denominator;
    e=(1-((1-e1)^35)); %prob 1

    f1=(land*(land-1)*(land-2)*(land-3)*(nonland)*(nonland-1)*(land-4))/denominator;
    f=(1-((1-f1)^21)); %prob 1

    g1=(land*(land-1)*(land-2)*(land-3)*(nonland)*(land-5)*(land-4))/denominator;
    g=(1-((1-g1)^7)); %prob 1

    h=(land*(land-1)*(land-2)*(land-3)*(land-6)*(land-5)*(land-4))/denominator;

    y=[aCorrect,bCorrect,cCorrect,dCorrect,eCorrect,fCorrect,gCorrect,h];

    x=[0:7];
    plot(x,y*100);
    grid on
    hold on
end

legend('20 lands','21 lands','22 lands','23 lands','24 lands','25 lands');
ylabel('percent chance opening hand');
xlabel('number of lands');
