package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;

public abstract class BaseLoadingActivity extends BaseActivity {

    private ViewGroup a;
    private View b;
    private View c;
    private View e;
    private View[] f;

    private void a(View View1) {
        int int2 = 0;

        if (View1 != null) {
            View[] View_1darray3;
            int int4;

            View1.setVisibility(0);
            View_1darray3 = f;
            int4 = View_1darray3.length;
            while (int2 < int4) {
                View View5 = View_1darray3[int2];

                if (View1 != View5)
                    View5.setVisibility(8);
                ++int2;
            }
        }
    }

    protected final void a(int int1) {
        LayoutInflater.from((Context) this).inflate(int1, a);
    }

    protected abstract void b();

    public void f() {
        a((View) a);
    }

    public final void g() {
        a(e);
    }

    public void h() {
        a(c);
    }

    public void i() {
        a(b);
    }

    protected void onCreate(Bundle Bundle1) {
        Object[] Object_1darray2;

        super.onCreate(Bundle1);
        if (com.clilystudio.netbook.hpay100.a.a.k())
            getWindow().setUiOptions(1);
        setContentView(2130903109);
        a = (ViewGroup) findViewById(2131492905);
        b = findViewById(2131493102);
        c = findViewById(2131493103);
        e = findViewById(2131493104);
        Object_1darray2 = new View[4];
        Object_1darray2[0] = a;
        Object_1darray2[1] = b;
        Object_1darray2[2] = c;
        Object_1darray2[3] = e;
        f = (View[]) Object_1darray2;
        c.setOnClickListener((View$OnClickListener) new ac(this));
    }
}
