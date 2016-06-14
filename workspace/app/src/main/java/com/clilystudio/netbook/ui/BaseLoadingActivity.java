package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class BaseLoadingActivity extends BaseActivity {
    private ViewGroup a;
    private View b;
    private View c;
    private View e;
    private View[] f;

    /*
     * Enabled aggressive block sorting
     */
    private void a(View view) {
        if (view != null) {
            view.setVisibility(0);
            for (View view2 : this.f) {
                if (view == view2) continue;
                view2.setVisibility(8);
            }
        }
    }

    protected final void a(int n) {
        LayoutInflater.from(this).inflate(n, this.a);
    }

    protected abstract void b();

    public void f() {
        this.a(this.a);
    }

    public final void g() {
        this.a(this.e);
    }

    public void h() {
        this.a(this.c);
    }

    public void i() {
        this.a(this.b);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a.k()) {
            this.getWindow().setUiOptions(1);
        }
        this.setContentView(2130903109);
        this.a = (ViewGroup) this.findViewById(2131492905);
        this.b = this.findViewById(2131493102);
        this.c = this.findViewById(2131493103);
        this.e = this.findViewById(2131493104);
        View[] arrview = new View[]{this.a, this.b, this.c, this.e};
        this.f = arrview;
        this.c.setOnClickListener((View.OnClickListener) ((Object) new ac(this)));
    }
}
