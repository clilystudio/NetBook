package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class AutoReaderSetWidget extends LinearLayout implements View.OnClickListener {
    private Context a;
    private int b = 5;
    private int c;
    private TextView d;
    private a h;

    public AutoReaderSetWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = context;
    }

    private void e() {
        TextView textView = this.d;
        Resources resources = this.getResources();
        Object[] arrobject = new Object[]{this.b};
        textView.setText(resources.getString(R.string.auto_reader_speed_desc, arrobject));
    }

    public final void a() {
        this.c = this.b;
        this.setVisibility(View.VISIBLE);
    }

    public final void b() {
        if (this.c != this.b) {
            MiStatInterface.recordCalculateEvent("auto_read_speed", null, this.b);
        }
        this.setVisibility(View.GONE);
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
             case R.id.btn_auto_reader_dec:
                this.h.b();
                break;
             case R.id.btn_auto_reader_acc:
                this.h.a();
                 break;
            case R.id.btn_auto_reader_stop:
                com.clilystudio.netbook.hpay100.a.a.E(this.getContext());
                this.h.c();
                break;
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void setOptionClickListener(a a2) {
        this.h = a2;
        this.b = com.clilystudio.netbook.hpay100.a.a.a(this.a, "auto_reader_speed", 5);
        this.d = (TextView) this.findViewById(R.id.txt_auto_turn_speed);
        this.e();
        Button e = (Button) this.findViewById(R.id.btn_auto_reader_dec);
        e.setOnClickListener(this);
        Button f = (Button) this.findViewById(R.id.btn_auto_reader_acc);
        f.setOnClickListener(this);
        Button g = (Button) this.findViewById(R.id.btn_auto_reader_stop);
        g.setOnClickListener(this);
    }


    public interface a {
        public void a();

        public void b();

        public void c();
    }
}
