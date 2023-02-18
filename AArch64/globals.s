        .data
        .align 3
        .global min_caml_objects
min_caml_objects:
        .space 480
        .global min_caml_size
min_caml_size:
	.quad	128                             ; 0x80
	.quad	128                             ; 0x80
        .global min_caml_dbg
min_caml_dbg:
	.quad	1                               ; 0x1
        .global min_caml_screen
min_caml_screen:
.zerofill __DATA,__common,_min_caml_screen,24,3
        .global min_caml_vp
min_caml_vp:
.zerofill __DATA,__common,_min_caml_vp,24,3
        .global min_caml_view
min_caml_view:
.zerofill __DATA,__common,_min_caml_view,24,3
        .global min_caml_light
min_caml_light:
.zerofill __DATA,__common,_min_caml_light,24,3
        .global min_caml_cos_v
min_caml_cos_v:
.zerofill __DATA,__common,_min_caml_cos_v,16,3
        .global min_caml_sin_v
min_caml_sin_v:
.zerofill __DATA,__common,_min_caml_sin_v,16,3
        .global min_caml_beam
min_caml_beam:
	.quad	0x406fe00000000000              ; double 255
        .global min_caml_and_net
min_caml_and_net:
	.space	400,255
        .global min_caml_or_net
min_caml_or_net:
	.space	8,255
        .global min_caml_temp
min_caml_temp:
        .space 112
        .global min_caml_cs_temp
min_caml_cs_temp:
        .space 128
        .global min_caml_solver_dist
min_caml_solver_dist:
        .space 8
        .global min_caml_vscan
min_caml_vscan:
        .space 24
        .global min_caml_intsec_rectside
min_caml_intsec_rectside:
        .space 8
        .global min_caml_tmin
min_caml_tmin:
	.quad	0x41cdcd6500000000              ; double 1.0E+9
        .global min_caml_crashed_point
min_caml_crashed_point:
        .space 24
        .global min_caml_crashed_object
min_caml_crashed_object:
        .space 8
        .global min_caml_end_flag
min_caml_end_flag:
        .space 8
        .global min_caml_viewpoint
min_caml_viewpoint:
        .space 24
        .global min_caml_nvector
min_caml_nvector:
        .space 24
        .global min_caml_rgb
min_caml_rgb:
        .space 24
        .global min_caml_texture_color
min_caml_texture_color:
        .space 24
        .global min_caml_solver_w_vec
min_caml_solver_w_vec:
        .space 24
        .global min_caml_chkinside_p
min_caml_chkinside_p:
        .space 24
        .global min_caml_isoutside_q
min_caml_isoutside_q:
        .space 24
        .global min_caml_nvector_w
min_caml_nvector_w:
        .space 24
        .global min_caml_scan_d
min_caml_scan_d:
        .space 8
        .global min_caml_scan_offset
min_caml_scan_offset:
        .space 8
        .global min_caml_scan_sscany
min_caml_scan_sscany:
.zerofill __DATA,__common,_min_caml_scan_sscany,8,3
        .global min_caml_scan_met1
min_caml_scan_met1:
.zerofill __DATA,__common,_min_caml_scan_met1,8,3
        .global min_caml_wscan
min_caml_wscan:
.zerofill __DATA,__common,_min_caml_wscan,24,3
