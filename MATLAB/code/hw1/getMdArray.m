function [data,years,type,class] = getMdArray()
%     �L��J
%     ��X�|�ܼ�[data years  type class]
%     data���@��4*3*2�T���Ʀr�x�} �̦��s�񨭥�/�~��/�Z�O���H��
%     years���@��3*1�V�q �s��~��
%     type���@��1*4�V�q �s�񨭥�
%     class��1*2�V�q �s��Z�O�W��
    data=[98 94 80 5; 105 97 87 6; 121 110 89 8];
    data(:,:,2)=[99 98 85 10; 113 101 87 12; 120 115 80 15];
    years=[{2001},{2002},{2003}];
    type=[{'�j�@�s��'},{'�Ǥh���~��'},{'�Ӥh���~��'},{'�դh���~��'}];
    class=[{'��T�t'},{'�q���t'}];
end