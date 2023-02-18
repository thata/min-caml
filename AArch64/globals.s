        .align 3
        .globl min_caml_objects
min_caml_objects:
        .space 480
	.globl	min_caml_size                  ; @min_caml_size
	.p2align	3
min_caml_size:
	.quad	128                             ; 0x80
	.quad	128                             ; 0x80

	.globl	min_caml_dbg                   ; @min_caml_dbg
	.p2align	3
min_caml_dbg:
	.quad	1                               ; 0x1

	.globl	min_caml_screen                ; @min_caml_screen
.zerofill __DATA,__common,min_caml_screen,24,3
	.globl	min_caml_vp                    ; @min_caml_vp
.zerofill __DATA,__common,min_caml_vp,24,3
	.globl	min_caml_view                  ; @min_caml_view
.zerofill __DATA,__common,min_caml_view,24,3
	.globl	min_caml_light                 ; @min_caml_light
.zerofill __DATA,__common,min_caml_light,24,3
	.globl	min_caml_cos_v                 ; @min_caml_cos_v
.zerofill __DATA,__common,min_caml_cos_v,16,3
	.globl	min_caml_sin_v                 ; @min_caml_sin_v
.zerofill __DATA,__common,min_caml_sin_v,16,3
	.globl	min_caml_beam                  ; @min_caml_beam
	.p2align	3
min_caml_beam:
	.quad	0x406fe00000000000              ; double 255

	.globl	min_caml_and_net               ; @min_caml_and_net
	.p2align	3
min_caml_and_net:
	.space	400,255

	.globl	min_caml_or_net                ; @min_caml_or_net
	.p2align	3
min_caml_or_net:
	.space	8,255

	.globl	min_caml_temp                  ; @min_caml_temp
.zerofill __DATA,__common,min_caml_temp,128,3
	.globl	min_caml_cs_temp               ; @min_caml_cs_temp
.zerofill __DATA,__common,min_caml_cs_temp,144,3
	.globl	min_caml_solver_dist           ; @min_caml_solver_dist
.zerofill __DATA,__common,min_caml_solver_dist,8,3
	.globl	min_caml_vscan                 ; @min_caml_vscan
.zerofill __DATA,__common,min_caml_vscan,24,3
	.globl	min_caml_intsec_rectside       ; @min_caml_intsec_rectside
.zerofill __DATA,__common,min_caml_intsec_rectside,8,3
	.globl	min_caml_tmin                  ; @min_caml_tmin
	.p2align	3
min_caml_tmin:
	.quad	0x41cdcd6500000000              ; double 1.0E+9

	.globl	min_caml_crashed_point         ; @min_caml_crashed_point
.zerofill __DATA,__common,min_caml_crashed_point,24,3
	.globl	min_caml_crashed_object        ; @min_caml_crashed_object
.zerofill __DATA,__common,min_caml_crashed_object,8,3
	.globl	min_caml_end_flag              ; @min_caml_end_flag
.zerofill __DATA,__common,min_caml_end_flag,8,3
	.globl	min_caml_viewpoint             ; @min_caml_viewpoint
.zerofill __DATA,__common,min_caml_viewpoint,24,3
	.globl	min_caml_nvector               ; @min_caml_nvector
.zerofill __DATA,__common,min_caml_nvector,24,3
	.globl	min_caml_rgb                   ; @min_caml_rgb
.zerofill __DATA,__common,min_caml_rgb,24,3
	.globl	min_caml_texture_color         ; @min_caml_texture_color
.zerofill __DATA,__common,min_caml_texture_color,24,3
	.globl	min_caml_solver_w_vec          ; @min_caml_solver_w_vec
.zerofill __DATA,__common,min_caml_solver_w_vec,24,3
	.globl	min_caml_chkinside_p           ; @min_caml_chkinside_p
.zerofill __DATA,__common,min_caml_chkinside_p,24,3
	.globl	min_caml_isoutside_q           ; @min_caml_isoutside_q
.zerofill __DATA,__common,min_caml_isoutside_q,24,3
	.globl	min_caml_nvector_w             ; @min_caml_nvector_w
.zerofill __DATA,__common,min_caml_nvector_w,24,3
	.globl	min_caml_scan_d                ; @min_caml_scan_d
.zerofill __DATA,__common,min_caml_scan_d,8,3
	.globl	min_caml_scan_offset           ; @min_caml_scan_offset
.zerofill __DATA,__common,min_caml_scan_offset,8,3
	.globl	min_caml_scan_sscany           ; @min_caml_scan_sscany
.zerofill __DATA,__common,min_caml_scan_sscany,8,3
	.globl	min_caml_scan_met1             ; @min_caml_scan_met1
.zerofill __DATA,__common,min_caml_scan_met1,8,3
	.globl	min_caml_wscan                 ; @min_caml_wscan
.zerofill __DATA,__common,min_caml_wscan,24,3
.subsections_via_symbols
