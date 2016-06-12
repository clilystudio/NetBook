package com.clilystudio.netbook.hpay100.c;

import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.widget.Button;
import android.widget.TextView;

public final class e {

    private Context a;
    private String b;
    private String c;
    private String d;
    private DialogInterface$OnClickListener e;
    private DialogInterface$OnClickListener f;
    public e(Context Context1) {
        a = Context1;
    }

    static DialogInterface$OnClickListener a(e e1) {
        return e1.e;
    }

    static DialogInterface$OnClickListener b(e e1) {
        return e1.f;
    }

    public final a a(int int1) {
        LayoutInflater LayoutInflater2 = (LayoutInflater) a.getSystemService("layout_inflater");
        int int3 = com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "style", "hpay_custom_confim_dialog");
        a a4 = new a(a, int3);
        View View5 = LayoutInflater2.inflate(int1, null);

        ((TextView) View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "tv_giveup_recharge"))).setText((CharSequence) "\u653E\u5F03\u5145\u503C");
        a4.addContentView(View5, new ViewGroup$LayoutParams(-1, -2));
        if (c != null) {
            ((Button) View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "hpay_positiveButton"))).setText((CharSequence) c);
            if (e != null)
                ((Button) View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "hpay_positiveButton"))).setOnClickListener((View$OnClickListener) new f(this, a4));
        } else
            View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "hpay_positiveButton")).setVisibility(8);
        if (d != null) {
            ((Button) View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "hpay_negativeButton"))).setText((CharSequence) d);
            if (f != null)
                ((Button) View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "hpay_negativeButton"))).setOnClickListener((View$OnClickListener) new g(this, a4));
        } else
            View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "hpay_negativeButton")).setVisibility(8);
        if (b != null)
            ((TextView) View5.findViewById(com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "id", "hpay_message"))).setText((CharSequence) b);
        a4.setContentView(View5);
        return a4;
    }

    public final e a(String String1) {
        b = String1;
        return this;
    }

    public final e a(String String1, DialogInterface$OnClickListener OnClickListener2) {
        c = String1;
        e = OnClickListener2;
        return this;
    }

    public final e b(String String1, DialogInterface$OnClickListener OnClickListener2) {
        d = String1;
        f = OnClickListener2;
        return this;
    }
}
