package com.clilystudio.netbook.ui;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.adapter.v;
import com.clilystudio.netbook.d;
import com.umeng.a.b;

public class MhdListActivity extends BaseActivity {
    private View a;
    private View b;
    private v c;

    public static Intent a(Context context) {
        return new d().a(context, MhdListActivity.class).a();
    }

    static /* synthetic */ void a(MhdListActivity mhdListActivity) {
        mhdListActivity.b();
    }

    static /* synthetic */ void a(MhdListActivity mhdListActivity, int n) {
        mhdListActivity.a(n);
    }

    static /* synthetic */ void a(MhdListActivity mhdListActivity, String string) {
        ComponentName componentName = new ComponentName("com.android.comicsisland.activity", "com.android.comicsisland.activity.BookDetailActivity");
        Intent intent = new Intent();
        intent.putExtra("bigBookId", string);
        intent.putExtra("zhuishusdk", "zhuishusdk");
        intent.setComponent(componentName);
        try {
            mhdListActivity.startActivity(intent);
            return;
        } catch (Exception var7_4) {
            h h2 = new h(mhdListActivity);
            h2.d = "\u786e\u8ba4\u4e0b\u8f7d";
            h2.e = "\u5373\u5c06\u5f00\u59cb\u4e0b\u8f7d\u300c\u6f2b\u753b\u5c9b\u300dAPP\uff084.0M\uff09\uff0c\u6b23\u8d4f60000+\u7cbe\u5f69\u6f2b\u753b~";
            h2.a(2131034371, (DialogInterface.OnClickListener) ((Object) new bl(mhdListActivity))).b(2131034129, null).a().show();
            return;
        }
    }

    static /* synthetic */ v b(MhdListActivity mhdListActivity) {
        return mhdListActivity.c;
    }

    private void a(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.a.setVisibility(8);
                this.b.setVisibility(8);
                return;
            }
            case 0: {
                this.a.setVisibility(0);
                this.b.setVisibility(8);
                return;
            }
            case 2:
        }
        this.a.setVisibility(8);
        this.b.setVisibility(0);
    }

    private void b() {
        this.a(0);
        new bm(this, 0).b(new Void[0]);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903088);
        this.b(2131034412);
        ListView listView = (ListView) this.findViewById(2131493101);
        this.a = this.findViewById(2131493102);
        this.b = this.findViewById(2131493103);
        this.b.setOnClickListener((View.OnClickListener) ((Object) new bj(this)));
        this.c = new v(this.getLayoutInflater());
        listView.setAdapter((ListAdapter) ((Object) this.c));
        listView.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new bk(this)));
        this.b();
        b.a(this, "mhd_open");
    }
}
