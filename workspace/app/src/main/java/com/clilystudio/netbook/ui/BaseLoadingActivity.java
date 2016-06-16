package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;

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
            view.setVisibility(View.VISIBLE);
            for (View view2 : this.f) {
                if (view == view2) continue;
                view2.setVisibility(View.GONE);
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
        this.setContentView(R.layout.activity_loading_base);
        this.a = (ViewGroup) this.findViewById(R.id.content);
        this.b = this.findViewById(R.id.common_list_pb);
        this.c = this.findViewById(R.id.common_list_error);
        this.e = this.findViewById(R.id.common_list_empty);
        View[] arrview = new View[]{this.a, this.b, this.c, this.e};
        this.f = arrview;
        this.c.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                b();
            }
        });
    }
}
