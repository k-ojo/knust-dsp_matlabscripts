function myprint(name, mytitle, label_y, label_x, lab)
    title(mytitle);
    ylabel(label_y);
    xlabel(label_x);
    file = strcat('C:\Users\Freedom Academy\Documents\LAB\matlab_labs\prints\', name, lab);
    print(file, '-dpng');
end