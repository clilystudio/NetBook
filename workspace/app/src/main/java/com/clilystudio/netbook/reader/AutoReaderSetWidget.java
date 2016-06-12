package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class AutoReaderSetWidget extends LinearLayout implements View$OnClickListener {

    private Context a;
    private int c;
    private TextView d;
    private Button e;
    private Button f;
    private Button g;
    private a h;
    private int b = 5;
    public AutoReaderSetWidget(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        a = Context1;
    }

    private void e() {
        TextView TextView1 = d;
        Resources Resources2 = getResources();
        Object[] Object_1darray3 = new Object[1];

        Object_1darray3[0] = Integer.valueOf(b);
        TextView1.setText((CharSequence) Resources2.getString(2131034319, Object_1darray3));
    }

    public final void a() {
        c = b;
        setVisibility(0);
    }

    public final void b() {
        if (c != b)
            com.umeng.a.b.a(getContext(), "auto_read_speed", null, b);
        setVisibility(8);
    }

    public final void c() {
        if (b < 10) {
            b = 1 + b;
            e();
            com.clilystudio.netbook.hpay100.a.a.b(a, "auto_reader_speed", b);
        }
    }

    public final void d() {
        if (b > 1) {
            b = -1 + b;
            e();
            com.clilystudio.netbook.hpay100.a.a.b(a, "auto_reader_speed", b);
        }
    }

    public void onClick(View View1) {
        switch (View1.getId()) {
            default:
                return;
            case 1003:
                h.b();
                return;
            case 1004:
                h.a();
                return;
            case 1005:
                com.clilystudio.netbook.hpay100.a.a.E(getContext());
                h.c();
                return;
        }
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1) {
        return super.onTouchEvent(MotionEvent1);
    }

    public void setOptionClickListener(a a1) {
        h = a1;
        b = com.clilystudio.netbook.hpay100.a.a.a(a, "auto_reader_speed", 5);
        d = (TextView) findViewById(2131493865);
        e();
        e = (Button) findViewById(2131493867);
        e.setOnClickListener(this);
        f = (Button) findViewById(2131493868);
        f.setOnClickListener(this);
        g = (Button) findViewById(2131493869);
        g.setOnClickListener(this);
    }
}
