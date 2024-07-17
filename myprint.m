function myprint(name, mytitle, label_y, label_x)
    title(mytitle);
    ylabel(label_y);
    xlabel(label_x);
    file = strcat('C:\Users\Freedom Academy\Documents\LAB\matlab_labs\prints\', name);
    print(file, '-dpng');
end
