package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;

import com.clilystudio.app.netbook.adapter.v;
import com.clilystudio.app.netbook.d_IntentFactory;

public class MhdListActivity extends BaseActivity {
    private View a;
    private View b;
    private v c;

    public static Intent a(Context paramContext) {
        return new d_IntentFactory().a_setClass(paramContext, MhdListActivity.class).a();
    }

    private void a(int paramInt) {
        switch (paramInt) {
            default:
                return;
            case 1:
                this.a.setVisibility(8);
                this.b.setVisibility(8);
                return;
            case 0:
                this.a.setVisibility(0);
                this.b.setVisibility(8);
                return;
            case 2:
        }
        this.a.setVisibility(8);
        this.b.setVisibility(0);
    }

    private void b() {
        a(0);
        new bm(this, (byte) 0).b(new Void[0]);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(2130903088);
        b_initContentView(2131034412);
        ListView localListView = (ListView) findViewById(2131493101);
        this.a = findViewById(2131493102);
        this.b = findViewById(2131493103);
        this.b.setOnClickListener(new bj(this));
        this.c = new v(getLayoutInflater());
        localListView.setAdapter(this.c);
        localListView.setOnItemClickListener(new bk(this));
        b();
        b.a(this, "mhd_open");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.MhdListActivity
 * JD-Core Version:    0.6.2
 */