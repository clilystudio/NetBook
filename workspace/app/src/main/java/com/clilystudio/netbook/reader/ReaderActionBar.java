package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;

public class ReaderActionBar extends RelativeLayout {

    private View a;
    private com.clilystudio.netbook.umeng.update.a b;
    private bZ c;
    private TextView d;
    private ImageView e;
    private TextView f;
    private TextView g;
    private View h;
    private View i;
    private View j;
    private TextView k;
    public ReaderActionBar(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
    }

    public ReaderActionBar(Context Context1) {
        super(Context1);
    }

    public ReaderActionBar(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static bZ a(ReaderActionBar ReaderActionBar1) {
        return ReaderActionBar1.c;
    }

    static void a(ReaderActionBar ReaderActionBar1, int int2) {
        if (ReaderActionBar1.b != null)
            ReaderActionBar1.b.a(int2);
    }

    public final void a() {
        if (c.h()) {
            d.setText(2131034422);
            e.setImageResource(2130837898);
        } else {
            d.setText(2131034420);
            e.setImageResource(2130837897);
        }
    }

    public final void a(boolean boolean1) {
        Object Object2 = new RelativeLayout$LayoutParams(-1, -1);

        if (boolean1)
            ((RelativeLayout$LayoutParams) Object2).setMargins(0, am.k(getContext()), 0, 0);
        else
            ((RelativeLayout$LayoutParams) Object2).setMargins(0, 0, 0, 0);
        setLayoutParams((ViewGroup$LayoutParams) Object2);
    }

    public final TextView b() {
        return k;
    }

    public final void b(boolean boolean1) {
        TextView TextView2 = (TextView) findViewById(2131493889);

        if (boolean1)
            TextView2.setText(2131034451);
        else
            TextView2.setText(2131034452);
    }

    public final void c(boolean boolean1) {
        a.setVisibility(8);
    }

    public final void d(boolean boolean1) {
        h.setVisibility(8);
    }

    public final void e(boolean boolean1) {
        j.setVisibility(8);
    }

    public final void f(boolean boolean1) {
        View View2 = i;
        int int3;

        if (boolean1)
            int3 = 0;
        else
            int3 = 4;
        View2.setVisibility(int3);
    }

    public final void g(boolean boolean1) {
        View View2 = findViewById(2131493893);
        int int3;

        if (boolean1)
            int3 = 0;
        else
            int3 = 8;
        View2.setVisibility(int3);
    }

    protected void onFinishInflate() {
        Object Object1;
        Object Object2;

        super.onFinishInflate();
        Object1 = new RelativeLayout$LayoutParams(-1, -1);
        ((RelativeLayout$LayoutParams) Object1).setMargins(0, am.k(getContext()), 0, 0);
        setLayoutParams((ViewGroup$LayoutParams) Object1);
        Object2 = new ah(this);
        f = (TextView) findViewById(2131493882);
        g = (TextView) findViewById(2131493859);
        if (!com.clilystudio.netbook.hpay100.a.a.r(getContext(), "switch_xunfei_read"))
            g.setVisibility(8);
        h = findViewById(2131493861);
        i = findViewById(2131493864);
        d = (TextView) findViewById(2131493887);
        e = (ImageView) findViewById(2131493886);
        a = findViewById(2131493891);
        j = findViewById(2131493862);
        k = (TextView) findViewById(2131493894);
        g.setOnClickListener((View$OnClickListener) Object2);
        h.setOnClickListener((View$OnClickListener) Object2);
        j.setOnClickListener((View$OnClickListener) Object2);
        a.setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493893).setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493881).setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493890).setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493892).setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493888).setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493860).setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493885).setOnClickListener((View$OnClickListener) new ai(this));
    }

    public void setChapterLink(String String1) {
        if (String1 == null || "".equals(String1))
            g(false);
        else {
            g(true);
            k.setText((CharSequence) String1);
        }
    }

    public void setOnBtnClickListener$7ead76dc(com.clilystudio.netbook.umeng.update.a a1) {
        b = a1;
    }

    public void setReaderStyle(bZ bZ1) {
        c = bZ1;
        a();
    }

    public void setTitle(String String1) {
        f.setText((CharSequence) String1);
    }
}
