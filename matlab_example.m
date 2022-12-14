% Copyright 2022 Ivan Lobato <Ivanlh20@gmail.com>
% zone_axis = 0: 110/101/011, 1: 001/100/010
% [Z, zone_axis, E_0, c_30, c_10, cond_lens_outer_aper_ang, det_inner_ang, det_outer_ang, rmsd_3d]

clear; clc;
figure(1); clf;
x = [79, 0, 300, 0.001, -50, 20, 30, 90, 0.085].';
y_p = ilm_scs_fcc(x);
plot(y_p, '-r');
xlabel('Number of atoms', 'fontname', 'times', 'fontsize', 14);
ylabel('Scatering cross-sections (Å^2)', 'fontname', 'times', 'fontsize', 14);
pbaspect([1.25 1, 1]);
str_text{1} = ['Z = ', num2str(x(1), '%d')];
str_text{2} = ['Zone axis = ', ilm_ifelse(x(2)==1, '001', '110')];
str_text{3} = ['E_0 = ', num2str(x(3), '%d'), 'keV'];
str_text{4} = ['Cs = ', num2str(1000*x(4), '%3.1f'), 'um'];
str_text{5} = ['Def = ', num2str(x(5), '%4.1f'), 'Å'];
str_text{6} = ['A. Rad = ', num2str(x(6), '%4.1f'), 'mrad'];
str_text{7} = ['Inner = ', num2str(x(7), '%4.1f'), 'mrad'];
str_text{8} = ['Outer = ', num2str(x(8), '%4.1f'), 'mrad'];
str_text{9} = ['Rmsd = ', num2str(x(9), '%4.3f'), 'Å'];
xt = repmat(0.75, 1, 9);
yt = 0.6:-0.06:0.0;
yt = yt(1:9);
text(xt, yt, str_text, 'units','normalized', 'fontname', 'times', 'fontsize', 13); 
