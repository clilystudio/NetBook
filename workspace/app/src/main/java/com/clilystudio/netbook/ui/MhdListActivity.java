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

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.v;
import com.clilystudio.netbook.d;
import com.umeng.a.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

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
            h2.a(R.string.download, (DialogInterface.OnClickListener) ((Object) new bl(mhdListActivity))).b(R.string.cancel, null).a().show();
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
                this.a.setVisibility(View.GONE);
                this.b.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.a.setVisibility(View.VISIBLE);
                this.b.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.a.setVisibility(View.GONE);
        this.b.setVisibility(View.VISIBLE);
    }

    private void b() {
        this.a(0);
        new bm(this, 0).b(new Void[0]);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_book_rank_list);
        this.b(R.string.mhd_list);
        ListView listView = (ListView) this.findViewById(R.id.common_list_content);
        this.a = this.findViewById(R.id.common_list_pb);
        this.b = this.findViewById(R.id.common_list_error);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MhdListActivity.a(MhdListActivity.this);
            }
        });
        this.c = new v(this.getLayoutInflater());
        listView.setAdapter((ListAdapter) ((Object) this.c));
        listView.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new bk(this)));
        this.b();
        MiStatInterface.recordCountEvent("mhd_open", null);
    }
}
