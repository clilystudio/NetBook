package com.clilystudio.netbook.ui;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.adapter.v;

public class MhdListActivity extends BaseActivity {

    private View a;
    private View b;
    private v c;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1) {
    }

    static void a(MhdListActivity MhdListActivity1) {
        MhdListActivity1.b();
    }

    static void a(MhdListActivity MhdListActivity1, int int2) {
        MhdListActivity1.a(int2);
    }

    static void a(MhdListActivity MhdListActivity1, String String2) {
        ComponentName ComponentName3 = new ComponentName("com.android.comicsisland.activity", "com.android.comicsisland.activity.BookDetailActivity");
        Intent Intent4 = new Intent();

        Intent4.putExtra("bigBookId", String2);
        Intent4.putExtra("zhuishusdk", "zhuishusdk");
        Intent4.setComponent(ComponentName3);
        try {
            MhdListActivity1.startActivity(Intent4);
        } catch (Exception Exception8) {
            h h9 = new h((Context) MhdListActivity1);

            h9.d = "\u786E\u8BA4\u4E0B\u8F7D";
            h9.e = "\u5373\u5C06\u5F00\u59CB\u4E0B\u8F7D\u300C\u6F2B\u753B\u5C9B\u300DAPP\uFF084.0M\uFF09\uFF0C\u6B23\u8D4F60000+\u7CBE\u5F69\u6F2B\u753B~";
            h9.a(2131034371, (DialogInterface$OnClickListener) new bl(MhdListActivity1)).b(2131034129, null).a().show();
            return;
        }
    }

    static v b(MhdListActivity MhdListActivity1) {
        return MhdListActivity1.c;
    }

    private void a(int int1) {
        switch (int1) {
            default:
                return;
            case 1:
                a.setVisibility(8);
                b.setVisibility(8);
                return;
            case 0:
                a.setVisibility(0);
                b.setVisibility(8);
                return;
            case 2:
                a.setVisibility(8);
                b.setVisibility(0);
                return;
        }
    }

    private void b() {
        a(0);
        new bm(this, (byte) 0).b(new Void[0]);
    }

    public void onCreate(Bundle Bundle1) {
        ListView ListView2;

        super.onCreate(Bundle1);
        setContentView(2130903088);
        b(2131034412);
        ListView2 = (ListView) findViewById(2131493101);
        a = findViewById(2131493102);
        b = findViewById(2131493103);
        b.setOnClickListener((View$OnClickListener) new bj(this));
        c = new v(getLayoutInflater());
        ListView2.setAdapter((ListAdapter) c);
        ListView2.setOnItemClickListener((AdapterView$OnItemClickListener) new bk(this));
        b();
        com.umeng.a.b.a((Context) this, "mhd_open");
    }
}
