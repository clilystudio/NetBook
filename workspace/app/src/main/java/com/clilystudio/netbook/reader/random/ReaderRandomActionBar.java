package com.clilystudio.netbook.reader.random;

import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup$LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;

public class ReaderRandomActionBar extends RelativeLayout {

    private TextView a;
    private com.clilystudio.netbook.umeng.update.a b;
    public ReaderRandomActionBar(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
    }

    public ReaderRandomActionBar(Context Context1) {
        super(Context1);
    }

    public ReaderRandomActionBar(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static void a(ReaderRandomActionBar ReaderRandomActionBar1, int int2) {
        if (ReaderRandomActionBar1.b != null)
            ReaderRandomActionBar1.b.a(int2);
    }

    protected void onFinishInflate() {
        Object Object1;
        View View2;

        super.onFinishInflate();
        Object1 = new RelativeLayout$LayoutParams(-1, -1);
        ((RelativeLayout$LayoutParams) Object1).setMargins(0, am.k(getContext()), 0, 0);
        setLayoutParams((ViewGroup$LayoutParams) Object1);
        View2 = findViewById(2131493934);
        a = (TextView) findViewById(2131493935);
        View2.setOnClickListener((View$OnClickListener) new c(this));
    }

    public void setOnBtnClickListener$3ce42dcd(com.clilystudio.netbook.umeng.update.a a1) {
        b = a1;
    }

    public void setTitle(String String1) {
        a.setText((CharSequence) String1);
    }
}
