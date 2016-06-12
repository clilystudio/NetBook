package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;

import com.clilystudio.netbook.hpay100.config.HPaySMS;

public class HPaySdkActivity extends Activity {

    public static y a;
    private static int c = 3;
    private static String Q = "";
    private x N;
    private HPaySMS O;
    private HPaySMS P;
    private Dialog b = null;
    private ImageView d = null;
    private TextView e = null;
    private TextView f = null;
    private TextView g = null;
    private TextView h = null;
    private TextView i = null;
    private TextView j = null;
    private TextView k = null;
    private Button l = null;
    private TextView m = null;
    private ImageView n = null;
    private TextView o = null;
    private ScrollView p = null;
    private ScrollView q = null;
    private TextView r = null;
    private EditText s = null;
    private Button t = null;
    private TextView u = null;
    private TextView v = null;
    private TextView w = null;
    private TextView x = null;
    private TextView y = null;
    private TextView z = null;
    private TextView A = null;
    private TextView B = null;
    private TextView C = null;
    private EditText D = null;
    private Button E = null;
    private Button F = null;
    private TextView G = null;
    private TextView H = null;
    private TextView I = null;
    private ImageView J = null;
    private ImageView K = null;
    private boolean L = true;
    private String M = "";
    private String R = "";
    private String S = "";
    private String T = "";
    private int U = 0;
    private int V = 0;

    static int a() {
        return c;
    }

    static Button a(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.E;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(Activity Activity1, int int2, HPaySMS HPaySMS3, y y4) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(Activity Activity1, String String2, int int3, String String4, int int5, String String6, int int7, y y8) {
    }

    private static void a(ImageView ImageView1, boolean boolean2) {
        if (ImageView1 != null) {
            String String3;

            if (boolean2)
                String3 = "#DFDFDF";
            else
                String3 = "#B93221";
            ImageView1.setBackgroundColor(Color.parseColor(String3));
        }
    }

    static void a(HPaySdkActivity HPaySdkActivity1, int int2) {
        HPaySdkActivity1.c();
    }

    static void a(HPaySdkActivity HPaySdkActivity1, Dialog Dialog2) {
        HPaySdkActivity1.b = Dialog2;
    }

    static void a(HPaySdkActivity HPaySdkActivity1, ImageView ImageView2, boolean boolean3) {
        a(ImageView2, boolean3);
    }

    static void a(HPaySdkActivity HPaySdkActivity1, HPaySMS HPaySMS2) {
        HPaySdkActivity1.O = HPaySMS2;
    }

    static void a(HPaySdkActivity HPaySdkActivity1, HPaySMS HPaySMS2, int int3) {
        HPaySMS2.requestPay$1361a8a9((Context) HPaySdkActivity1, 2, (y) new k(HPaySdkActivity1));
    }

    static void a(HPaySdkActivity HPaySdkActivity1, String String2) {
        HPaySdkActivity1.runOnUiThread((Runnable) new s(HPaySdkActivity1, String2));
    }

    static void a(HPaySdkActivity HPaySdkActivity1, boolean boolean2) {
        HPaySdkActivity1.L = boolean2;
    }

    static void b(HPaySdkActivity HPaySdkActivity1) {
        HPaySdkActivity1.runOnUiThread((Runnable) new h(HPaySdkActivity1));
    }

    static void b(HPaySdkActivity HPaySdkActivity1, int int2) {
        HPaySdkActivity1.d();
    }

    static void b(HPaySdkActivity HPaySdkActivity1, String String2) {
        HPaySdkActivity1.M = String2;
    }

    static TextView c(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.I;
    }

    static ImageView d(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.J;
    }

    static String e(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.T;
    }

    static String f(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.R;
    }

    static int g(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.U;
    }

    static HPaySMS h(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.O;
    }

    static String i(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.S;
    }

    static void j(HPaySdkActivity HPaySdkActivity1) {
        Object Object3;
        String String5;
        Object Object6;

        HPaySdkActivity1.p.setVisibility(4);
        HPaySdkActivity1.q.setVisibility(0);
        HPaySdkActivity1.o.setText((CharSequence) "\u77ED\u4FE1\u5145\u503C");
        HPaySdkActivity1.D.setFocusableInTouchMode(true);
        HPaySdkActivity1.D.requestFocus();
        HPaySdkActivity1.D.setText((CharSequence) "");
        HPaySdkActivity1.G.setText((CharSequence) "");
        HPaySdkActivity1.F.setText((CharSequence) "\u786E\u8BA4\u63D0\u4EA4");
        Object3 = com.clilystudio.netbook.hpay100.config.a.a(HPaySdkActivity1.U);
        HPaySdkActivity1.v.setText((CharSequence) "\u5E94\u7528\u540D\u79F0");
        HPaySdkActivity1.w.setText((CharSequence) Q);
        HPaySdkActivity1.x.setText((CharSequence) "\u5546\u54C1\u540D\u79F0");
        HPaySdkActivity1.y.setText((CharSequence) HPaySdkActivity1.S);
        HPaySdkActivity1.z.setText((CharSequence) "\u652F\u4ED8\u91D1\u989D");
        HPaySdkActivity1.A.setText((CharSequence) Object3);
        HPaySdkActivity1.B.setText((CharSequence) "\u624B\u673A\u53F7\u7801");
        HPaySdkActivity1.C.setText((CharSequence) HPaySdkActivity1.M);
        HPaySdkActivity1.getApplicationContext();
        String5 = com.clilystudio.netbook.hpay100.a.a.b();
        if (TextUtils.isEmpty((CharSequence) HPaySdkActivity1.O.mDetail))
            Object6 = new StringBuilder("\u6E29\u99A8\u63D0\u793A\uFF1A\u672C\u6B21\u652F\u4ED8\u91D1\u989D").append((String) Object3).append("\uFF0C\u4E0D\u542B\u901A\u4FE1\u8D39\uFF0C\u7531\u8FD0\u8425\u5546\u4EE3\u6536\u3002\u5BA2\u670D\u7535\u8BDD\uFF1A").append(String5).toString();
        else
            Object6 = HPaySdkActivity1.O.mDetail;
        HPaySdkActivity1.H.setText((CharSequence) Object6);
        try {
            HPaySdkActivity1.e();
            HPaySdkActivity1.N = new x(HPaySdkActivity1, 60000L, 1000L);
            HPaySdkActivity1.N.start();
        } catch (Exception Exception7) {
            Exception7.printStackTrace();
            return;
        }
    }

    static TextView k(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.G;
    }

    static ImageView l(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.K;
    }

    static boolean m(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.L;
    }

    static EditText n(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.D;
    }

    static HPaySMS o(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.P;
    }

    static EditText p(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.s;
    }

    static Button q(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.t;
    }

    static String r(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.M;
    }

    static int s(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.V;
    }

    static void t(HPaySdkActivity HPaySdkActivity1) {
        HPaySdkActivity1.b();
    }

    static void u(HPaySdkActivity HPaySdkActivity1) {
        HPaySdkActivity1.e();
    }

    static Button v(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.F;
    }

    static Dialog w(HPaySdkActivity HPaySdkActivity1) {
        return HPaySdkActivity1.b;
    }

    private void b() {
        p.setVisibility(0);
        q.setVisibility(4);
        s.setFocusableInTouchMode(true);
        s.requestFocus();
        o.setText((CharSequence) "\u77ED\u4FE1\u5145\u503C");
        r.setText((CharSequence) "\u8BF7\u8F93\u5165\u672C\u673A\u6216\u8005\u5176\u4ED6\u624B\u673A\u53F7");
        t.setText((CharSequence) "\u4E0B\u4E00\u6B65");
        u.setText((CharSequence) "\u6E29\u99A8\u63D0\u793A\uFF1A\u7531\u4E8E\u8FD0\u8425\u5546\u7684\u76F8\u5173\u89C4\u5B9A\uFF0C\u4E0D\u540C\u5730\u533A\u6709\u5145\u503C\u6B21\u6570\u7684\u9650\u5236\uFF1B\u82E5\u65E0\u6CD5\u5145\u503C\uFF0C\u8BF7\u4F7F\u7528\u5176\u4ED6\u5145\u503C\u65B9\u5F0F\u3002");
    }

    private void c() {
        com.clilystudio.netbook.hpay100.c.c.a((Context) this, com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_retain"), "\u60A8\u771F\u7684\u8981\u653E\u5F03\u5417\uFF1F", null, (DialogInterface$OnClickListener) new i(this));
    }

    private void d() {
        com.clilystudio.netbook.hpay100.c.c.a((Context) this, com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_retain"), "\u60A8\u771F\u7684\u8981\u653E\u5F03\u5417\uFF1F", null, (DialogInterface$OnClickListener) new j(this));
    }

    private void e() {
        try {
            if (N != null) {
                N.cancel();
                N = null;
            }
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }

    public void finish() {
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "finsh");
        com.clilystudio.netbook.hpay100.c.j.a(this);
        super.finish();
        a = null;
        c = 3;
        com.clilystudio.netbook.hpay100.config.b.a(null);
        e();
        com.clilystudio.netbook.hpay100.c.j.a(this, com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "anim", "hpay_push_right_in"), com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "anim", "hpay_push_right_out"));
    }

    public void onBackPressed() {
        if (c == 3)
            c();
        else if (c == 1) {
            if (L)
                d();
            else {
                com.clilystudio.netbook.hpay100.config.b.a(null);
                L = true;
                b();
                t.setEnabled(true);
                e();
            }
        } else
            super.onBackPressed();
    }

    protected void onCreate(Bundle Bundle1) {
        int int3;

        super.onCreate(Bundle1);
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onCreate");
        requestWindowFeature(1);
        getWindow().addFlags(128);
        int3 = com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_dd");
        switch (c) {
            case 3:
                int3 = com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_dd");
                break;
            case 2:
                int3 = com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_wap");
                break;
            case 1:
                int3 = com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "layout", "hpay_act_dy");
                break;
            default:
                break;
        }
        setContentView(int3);
        switch (c) {
            case 3:
                Intent Intent10;
                Object Object12;
                String String14;
                Object Object15;

                d = (ImageView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_img_back_dd"));
                e = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_top_dd"));
                f = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_yymc_left_dd"));
                g = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_yymc_right_dd"));
                h = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_spmc_left_dd"));
                i = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_spmc_right_dd"));
                j = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_zfje_left_dd"));
                k = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_zfje_right_dd"));
                l = (Button) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_qdtj_dd"));
                l.setText((CharSequence) "\u786E\u8BA4\u63D0\u4EA4");
                m = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_wxts_bottom_dd"));
                l.setOnClickListener((View$OnClickListener) new g(this));
                d.setOnClickListener((View$OnClickListener) new l(this));
                Intent10 = getIntent();
                if (Intent10 != null)
                    P = (HPaySMS) Intent10.getSerializableExtra("hpay_sms");
                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("mPaySMSDD:").append(P).toString());
                getApplicationContext();
                Q = com.clilystudio.netbook.hpay100.a.a.c();
                e.setText((CharSequence) "\u77ED\u4FE1\u5145\u503C");
                Object12 = com.clilystudio.netbook.hpay100.config.a.a(P.mAmount);
                f.setText((CharSequence) "\u5E94\u7528\u540D\u79F0");
                g.setText((CharSequence) Q);
                h.setText((CharSequence) "\u5546\u54C1\u540D\u79F0");
                i.setText((CharSequence) P.mPayName);
                j.setText((CharSequence) "\u652F\u4ED8\u91D1\u989D");
                k.setText((CharSequence) Object12);
                getApplicationContext();
                String14 = com.clilystudio.netbook.hpay100.a.a.b();
                Object15 = new StringBuilder("\u6E29\u99A8\u63D0\u793A\uFF1A\u672C\u6B21\u652F\u4ED8\u91D1\u989D").append((String) Object12).append("\uFF0C\u4E0D\u542B\u901A\u4FE1\u8D39\uFF0C\u7531\u8FD0\u8425\u5546\u4EE3\u6536\u3002\u5BA2\u670D\u7535\u8BDD\uFF1A").append(String14).toString();
                m.setText((CharSequence) Object15);
                return;
            case 1:
                Intent Intent5;
                Object Object6;

                n = (ImageView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_img_back_dy"));
                o = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_top_dy"));
                p = (ScrollView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_scroll_inputphone_dy"));
                r = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_input_title_dy"));
                s = (EditText) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_et_inputphone_dy"));
                t = (Button) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_input_next_dy"));
                u = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_input_wxts_bottom_dy"));
                q = (ScrollView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_scroll_layout_ver_dy"));
                v = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_yyms_left_dy"));
                w = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_yyms_right_dy"));
                x = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_spmc_left_dy"));
                y = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_spmc_right_dy"));
                z = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_zfje_left_dy"));
                A = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_zfje_right_dy"));
                B = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_sjh_left_dy"));
                C = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_sjh_right_dy"));
                D = (EditText) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_et_ver_yzm_dy"));
                E = (Button) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_ver_yzm_dy"));
                F = (Button) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_btn_ver_tj_dy"));
                G = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_show_yzm_error_dy"));
                H = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_tv_ver_wxts_bottom_dy"));
                I = (TextView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "tv_input_num_error"));
                J = (ImageView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_view_line_inputphone_dy"));
                K = (ImageView) findViewById(com.clilystudio.netbook.hpay100.a.a.a(getApplicationContext(), "id", "hpay_iv_ver_yzm_line_dy"));
                a(J, true);
                t.setOnClickListener((View$OnClickListener) new m(this));
                F.setOnClickListener((View$OnClickListener) new n(this));
                E.setOnClickListener((View$OnClickListener) new o(this));
                n.setOnClickListener((View$OnClickListener) new p(this));
                s.addTextChangedListener((TextWatcher) new q(this));
                D.addTextChangedListener((TextWatcher) new r(this));
                M = "";
                L = true;
                O = null;
                getApplicationContext();
                Q = com.clilystudio.netbook.hpay100.a.a.c();
                Intent5 = getIntent();
                if (Intent5 != null && Intent5.getExtras() != null) {
                    T = Intent5.getExtras().getString("hpay_orderid");
                    R = Intent5.getExtras().getString("hpay_payid");
                    S = Intent5.getExtras().getString("hpay_payname");
                    U = Intent5.getExtras().getInt("hpay_price");
                    V = Intent5.getExtras().getInt("hpay_codetype");
                }
                com.clilystudio.netbook.hpay100.config.b.a(null);
                b();
                t.setEnabled(false);
                Object6 = com.clilystudio.netbook.hpay100.config.l.e(getApplicationContext());
                if (!android.text.TextUtils.isEmpty((CharSequence) Object6)) {
                    s.setText((CharSequence) Object6);
                    try {
                        Object Object9;

                        s.setFocusableInTouchMode(true);
                        s.requestFocus();
                        s.setEnabled(true);
                        Object9 = s.getText();
                        if (Object9 instanceof Spannable)
                            Selection.setSelection((Spannable) Object9, ((CharSequence) Object9).length());
                    } catch (Exception Exception7) {
                        Exception7.printStackTrace();
                        return;
                    }
                    return;
                }
            case 2:
            default:
                return;
        }
    }

    protected void onDestroy() {
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onDestroy");
        super.onDestroy();
    }

    protected void onPause() {
        super.onPause();
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onPause");
    }

    protected void onRestart() {
        super.onRestart();
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onRestart");
    }

    protected void onResume() {
        super.onResume();
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onResume");
    }

    protected void onStart() {
        super.onStart();
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onStart");
    }

    protected void onStop() {
        super.onStop();
        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", "onStop");
    }
}
