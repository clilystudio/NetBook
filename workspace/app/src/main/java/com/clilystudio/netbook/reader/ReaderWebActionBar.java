package com.clilystudio.netbook.reader;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ReaderWebActionBar extends RelativeLayout {

    private com.clilystudio.netbook.umeng.update.a a;
    private TextView b;
    private View c;
    private View d;
    private View e;
    private TextView f;
    public ReaderWebActionBar(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
    }

    public ReaderWebActionBar(Context Context1) {
        super(Context1);
    }

    public ReaderWebActionBar(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    static void a(ReaderWebActionBar ReaderWebActionBar1, int int2) {
        if (ReaderWebActionBar1.a != null)
            ReaderWebActionBar1.a.a(int2);
    }

    private void b(boolean boolean1) {
        View View2 = findViewById(2131493893);
        int int3;

        if (boolean1)
            int3 = 0;
        else
            int3 = 8;
        View2.setVisibility(int3);
    }

    public final void a(boolean boolean1) {
        View View2 = d;
        int int3;

        if (boolean1)
            int3 = 0;
        else
            int3 = 4;
        View2.setVisibility(int3);
    }

    protected void onFinishInflate() {
        View View1;
        Object Object2;

        super.onFinishInflate();
        b = (TextView) findViewById(2131493882);
        c = findViewById(2131493861);
        d = findViewById(2131493864);
        e = findViewById(2131493862);
        f = (TextView) findViewById(2131493894);
        View1 = findViewById(2131493881);
        Object2 = new cA(this);
        c.setOnClickListener((View$OnClickListener) Object2);
        e.setOnClickListener((View$OnClickListener) Object2);
        findViewById(2131493893).setOnClickListener((View$OnClickListener) Object2);
        View1.setOnClickListener((View$OnClickListener) Object2);
    }

    public void setChapterLink(String String1) {
        if (String1 == null || "".equals(String1))
            b(false);
        else {
            b(true);
            f.setText((CharSequence) String1);
        }
    }

    public void setOnBtnClickListener$74b8600c(com.clilystudio.netbook.umeng.update.a a1) {
        a = a1;
    }

    public void setTitle(String String1) {
        b.setText((CharSequence) String1);
    }

    public void setTopicCount(String String1) {
    }
}
