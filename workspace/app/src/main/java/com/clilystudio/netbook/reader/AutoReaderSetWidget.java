package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class AutoReaderSetWidget extends LinearLayout implements View.OnClickListener {
    private Context a;
    private int b = 5;
    private int c;
    private TextView d;
    private Button e;
    private Button f;
    private Button g;
    private a h;

    public AutoReaderSetWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = context;
    }

    private void e() {
        TextView textView = this.d;
        Resources resources = this.getResources();
        Object[] arrobject = new Object[]{this.b};
        textView.setText(resources.getString(2131034319, arrobject));
    }

    public final void a() {
        this.c = this.b;
        this.setVisibility(0);
    }

    public final void b() {
        if (this.c != this.b) {
            b.a(this.getContext(), "auto_read_speed", null, this.b);
        }
        this.setVisibility(8);
    }

    public final void c() {
        if (this.b < 10) {
            this.b = 1 + this.b;
            this.e();
            com.clilystudio.netbook.hpay100.a.a.b(this.a, "auto_reader_speed", this.b);
        }
    }

    public final void d() {
        if (this.b > 1) {
            this.b = -1 + this.b;
            this.e();
            com.clilystudio.netbook.hpay100.a.a.b(this.a, "auto_reader_speed", this.b);
        }
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493867: {
                this.h.b();
                return;
            }
            case 2131493868: {
                this.h.a();
                return;
            }
            case 2131493869:
        }
        com.clilystudio.netbook.hpay100.a.a.E(this.getContext());
        this.h.c();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void setOptionClickListener(a a2) {
        this.h = a2;
        this.b = com.clilystudio.netbook.hpay100.a.a.a(this.a, "auto_reader_speed", 5);
        this.d = (TextView) this.findViewById(2131493865);
        this.e();
        this.e = (Button) this.findViewById(2131493867);
        this.e.setOnClickListener(this);
        this.f = (Button) this.findViewById(2131493868);
        this.f.setOnClickListener(this);
        this.g = (Button) this.findViewById(2131493869);
        this.g.setOnClickListener(this);
    }
}
