// min-rt/globals.ml をCへ移植したもの
// このファイルを元に globals.s を生成する
// gcc -S globals.c
long min_caml_objects[] = {
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
    0l, 0l, 0l, 0l, 0l, 0l, 0l, 0l,
};
long min_caml_size[] = {128l, 128l};
long min_caml_dbg[] = {1l};
double min_caml_screen[] = {0.0, 0.0, 0.0};
// let vp = Array.make 3 0.0
double min_caml_vp[] = {0.0, 0.0, 0.0};
// (* 視点の座標 (screen 位置分の offset あり) *)
// let view = Array.make 3 0.0
double min_caml_view[] = {0.0, 0.0, 0.0};
// (* 光源方向ベクトル (単位ベクトル) *)
// let light = Array.make 3 0.0
double min_caml_light[] = {0.0, 0.0, 0.0};
// (* スクリーンの回転方向: 三角関数の値で保持 *)
// let cos_v = Array.make 2 0.0
double min_caml_cos_v[] = {0.0, 0.0};
// let sin_v = Array.make 2 0.0
double min_caml_sin_v[] = {0.0, 0.0};
// (* 鏡面ハイライト強度 (標準=255) *)
// let beam = Array.make 1 255.0
double min_caml_beam[] = {255.0};
// (* AND ネットワークを保持 *)
// let and_net = Array.make 50 (Array.make 1 (-1))
long min_caml_and_net[] = {
    -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l,
    -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l,
    -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l,
    -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l,
    -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l, -1l,
};
// (* OR ネットワークを保持 *)
// let or_net = Array.make 1 (Array.make 1 (and_net.(0)))
long min_caml_or_net[] = {-1l};

// (* reader *)
// let temp = Array.make 14 0.0 (* read_nth_object 内の作業変数 *)
double min_caml_temp[] = {
    0.0, 0.0, 0.0, 0.0, 0,0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0,0, 0.0, 0.0,
};
// let cs_temp = Array.make 16 0.0
double min_caml_cs_temp[] = {
    0.0, 0.0, 0.0, 0.0, 0,0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0,0, 0.0, 0.0, 0.0,
};

// (* solver *)
// (**** Callee との通信用グローバル変数 ****)
// (* 交点 の t の値 *)
// let solver_dist = Array.make 1 0.0
double min_caml_solver_dist[] = {0.0};

// (* スキャンの方向 *)
// let vscan = Array.make 3 0.0
double min_caml_vscan[] = {0.0, 0.0, 0.0};
// (* 交点の直方体表面での方向 *)
// let intsec_rectside = Array.make 1 0
long min_caml_intsec_rectside[] = {0l};
// (* 発見した交点の最小の t *)
// let tmin = Array.make 1 (1000000000.0)
double min_caml_tmin[] = {1000000000.0};
// (* 交点の座標 *)
// let crashed_point = Array.make 3 0.0
double min_caml_crashed_point[] = {0.0, 0.0, 0.0};
// (* 衝突したオブジェクト *)
// let crashed_object = Array.make 1 0
long min_caml_crashed_object[] = {0l};
// (* 1つの AND ネットワークについての終了フラグ *)
// let end_flag = Array.make 1 false
long min_caml_end_flag[] = {0l};
// (* トレース開始点 *)
// let viewpoint = Array.make 3 0.0
double min_caml_viewpoint[] = {0.0, 0.0, 0.0};
// (* 法線ベクトル *)
// let nvector = Array.make 3 0.0
double min_caml_nvector[] = {0.0, 0.0, 0.0};
// (* スクリーン上の点の明るさ *)
// let rgb = Array.make 3 0.0
double min_caml_rgb[] = {0.0, 0.0, 0.0};
// (* 交点の色 *)
// let texture_color = Array.make 3 0.0
double min_caml_texture_color[] = {0.0, 0.0, 0.0};
// (* オブジェクト中心を原点にした視点ベクトル *)
// let solver_w_vec = Array.make 3 0.0
double min_caml_solver_w_vec[] = {0.0, 0.0, 0.0};

// (* check_all_inside 用引数ベクトル *)
// let chkinside_p = Array.make 3 0.0
double min_caml_chkinside_p[] = {0.0, 0.0, 0.0};

// (* is_outside 用内部利用 (中心差分) ベクトル *)
// let isoutside_q = Array.make 3 0.0
double min_caml_isoutside_q[] = {0.0, 0.0, 0.0};

// (* グローバルに切り出したローカル変数 *)
// (* nvector *)
// let nvector_w = Array.make 3 0.0
double min_caml_nvector_w[] = {0.0, 0.0, 0.0};

// (* main *)
// let scan_d = Array.make 1 0.0
double min_caml_scan_d[] = {0.0};
// let scan_offset = Array.make 1 0.0
double min_caml_scan_offset[] = {0.0};
// let scan_sscany = Array.make 1 0.0
double min_caml_scan_sscany[] = {0.0};
// let scan_met1 = Array.make 1 0.0
double min_caml_scan_met1[] = {0.0};
// let wscan = Array.make 3 0.0
double min_caml_wscan[] = {0.0, 0.0, 0.0};
