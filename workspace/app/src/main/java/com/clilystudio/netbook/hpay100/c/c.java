package com.clilystudio.netbook.hpay100.c;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnKeyListener;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff$Mode;
import android.support.design.widget.K;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class c {

    public ColorStateList a;
    public PorterDuff$Mode b;
    public boolean c;
    public boolean d;

    public static Dialog a(Activity Activity1, String String2, boolean boolean3, K K4) {
        int int5 = com.clilystudio.netbook.hpay100.a.a.a((Context) Activity1, "layout", "hpay_text_progress");
        View View6 = LayoutInflater.from((Context) Activity1).inflate(int5, null);
        Dialog Dialog7;

        ((TextView) View6.findViewById(com.clilystudio.netbook.hpay100.a.a.a((Context) Activity1, "id", "alert_text_show_id"))).setText((CharSequence) String2);
        Dialog7 = new Dialog((Context) Activity1, com.clilystudio.netbook.hpay100.a.a.a((Context) Activity1, "style", "hpay_progress_dialog"));
        Dialog7.setContentView(View6);
        Dialog7.setCancelable(false);
        Dialog7.setCanceledOnTouchOutside(false);
        Dialog7.setOnCancelListener((DialogInterface$OnCancelListener) new k(null));
        Dialog7.setOnKeyListener((DialogInterface$OnKeyListener) new l(false, Dialog7));
        return Dialog7;
    }

    public static void a(Activity Activity1, String String2, int int3) {
        if (Activity1 != null)
            Activity1.runOnUiThread((Runnable) new m(Activity1, String2, 1));
    }

    public static void a(Context Context1, int int2, String String3, DialogInterface$OnClickListener OnClickListener4, DialogInterface$OnClickListener OnClickListener5) {
        e e6 = new e(Context1);
        Object Object8;

        e6.a(String3).a("\u53D6\u6D88", (DialogInterface$OnClickListener) new n(null)).b("\u786E\u5B9A", (DialogInterface$OnClickListener) new o(OnClickListener5));
        Object8 = e6.a(int2);
        ((Dialog) Object8).setCancelable(false);
        ((Dialog) Object8).setCanceledOnTouchOutside(false);
        ((Dialog) Object8).show();
    }
}
