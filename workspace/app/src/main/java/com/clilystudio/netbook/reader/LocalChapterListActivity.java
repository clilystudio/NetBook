package com.clilystudio.netbook.reader;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.C;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocDownloadSummary;
import com.clilystudio.netbook.ui.BaseActivity;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class LocalChapterListActivity
        extends BaseActivity {
    private TextView a;
    private ListView b;
    private C c;
    private View e;
    private ProgressDialog f;
    private String g;
    private String h;

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, LocalChapterListActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a();
    }

    static /* synthetic */ ListView a(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.b;
    }

    static /* synthetic */ void a(LocalChapterListActivity localChapterListActivity, String string) {
        new uk.me.lewisdeane.ldialogs.h(localChapterListActivity).b(2131034339).a(false).a(2131034367, (DialogInterface.OnClickListener) ((Object) new k(localChapterListActivity, string))).b(2131034129, (DialogInterface.OnClickListener) ((Object) new j(localChapterListActivity))).b();
    }

    static /* synthetic */ C b(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.c;
    }

    static /* synthetic */ String c(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.g;
    }

    static /* synthetic */ String d(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.h;
    }

    static /* synthetic */ void e(LocalChapterListActivity localChapterListActivity) {
        localChapterListActivity.b();
    }

    static /* synthetic */ ProgressDialog f(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.f;
    }

    static /* synthetic */ View g(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.e;
    }

    static /* synthetic */ TextView h(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ ArrayList i(LocalChapterListActivity localChapterListActivity) {
        ArrayList<String> arrayList = a.D(localChapterListActivity.g);
        ArrayList<TocDownloadSummary> arrayList2 = new ArrayList<TocDownloadSummary>();
        Iterator<String> iterator = arrayList.iterator();
        while (iterator.hasNext()) {
            String string = iterator.next();
            if (string.contains("MIX_TOC_ID") || string.contains("_")) continue;
            Toc toc = (Toc) a.b(localChapterListActivity.g, string, "toc");
            String string2 = localChapterListActivity.g;
            String string3 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string;
            int n2 = a.b(new File(c.a, string3));
            if (toc != null) {
                --n2;
            }
            if (n2 <= 0) continue;
            TocDownloadSummary tocDownloadSummary = new TocDownloadSummary();
            tocDownloadSummary.setTocId(string);
            tocDownloadSummary.setCount(n2);
            if (toc != null) {
                tocDownloadSummary.setHostName(toc.getHost());
            } else {
                tocDownloadSummary.setHostName("\u672a\u77e5\u6765\u6e90");
            }
            arrayList2.add(tocDownloadSummary);
        }
        return arrayList2;
    }

    private void b() {
        l l2 = new l(this);
        this.f = ProgressDialog.show(this, null, "\u8f7d\u5165\u4e2d...", true, true);
        this.f.setCanceledOnTouchOutside(false);
        new m(this, (Handler) ((Object) l2)).start();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903110);
        this.c(2131034469);
        this.g = this.getIntent().getStringExtra("BOOK_ID");
        this.h = this.getIntent().getStringExtra("BOOK_TITLE");
        this.a = (TextView) this.findViewById(2131493139);
        this.b = (ListView) this.findViewById(2131493137);
        this.e = LayoutInflater.from(this).inflate(2130903381, (ViewGroup) this.b, false);
        this.b.addHeaderView(this.e, null, false);
        this.e.setVisibility(8);
        this.c = new C(this.getLayoutInflater());
        this.b.setAdapter(this.c);
        this.b.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new h(this)));
        this.b.setOnItemLongClickListener((AdapterView.OnItemLongClickListener) ((Object) new i(this)));
        if (!a.d()) {
            this.a.setVisibility(0);
            this.a.setText("\u65e0\u6cd5\u83b7\u53d6\u9884\u8bfb\u7ae0\u8282\uff0c\u8bf7\u68c0\u67e5SD\u5361");
            return;
        }
        this.b();
    }
}
