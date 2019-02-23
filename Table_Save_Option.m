dlgTitle    = 'Save option';
dlgQuestion = 'Would you like to save this table?';
choice = questdlg(dlgQuestion,dlgTitle,'Yes','No', 'Yes');

if isequal(choice,'No') || isempty(choice)
    return
else
    [filename, pathname] = uiputfile('*.xlsx','Save intensity table');
    if isequal(filename,0) || isequal(pathname,0)
        uiwait(warndlg({'File not saved.';'Click OK to continue.'},'Warning!'));
    else
        writetable(T,[pathname filename])
    end
end