package com.clilystudio.app.netbook.ui;

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

    private void a(View paramView) {
        int i = 0;
        if (paramView == null) ;
        while (true) {
            return;
            paramView.setVisibility(0);
            View[] arrayOfView = this.f;
            int j = arrayOfView.length;
            while (i < j) {
                View localView = arrayOfView[i];
                if (paramView != localView)
                    localView.setVisibility(8);
                i++;
            }
        }
    }

    protected final void a(int paramInt) {
        LayoutInflater.from(this).inflate(paramInt, this.a);
    }

    protected abstract void b();

    public void f() {
        a(this.a);
    }

    public final void g() {
        a(this.e);
    }

    public void h() {
        a(this.c);
    }

    public void i() {
        a(this.b);
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        if (a.k())
            getWindow().setUiOptions(1);
        setContentView(2130903109);
        this.a = ((ViewGroup) findViewById(2131492905));
        this.b = findViewById(2131493102);
        this.c = findViewById(2131493103);
        this.e = findViewById(2131493104);
        View[] arrayOfView = new View[4];
        arrayOfView[0] = this.a;
        arrayOfView[1] = this.b;
        arrayOfView[2] = this.c;
        arrayOfView[3] = this.e;
        this.f = arrayOfView;
        this.c.setOnClickListener(new ac(this));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BaseLoadingActivity
 * JD-Core Version:    0.6.2
 */