package com.clilystudio.netbook.reader;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.AdapterView$OnItemLongClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.C;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocDownloadSummary;
import com.clilystudio.netbook.ui.BaseActivity;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class LocalChapterListActivity extends BaseActivity {

    private TextView a;
    private ListView b;
    private C c;
    private View e;
    private ProgressDialog f;
    private String g;
    private String h;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3) {
    }

    static ListView a(LocalChapterListActivity LocalChapterListActivity1) {
        return LocalChapterListActivity1.b;
    }

    static void a(LocalChapterListActivity LocalChapterListActivity1, String String2) {
        new uk.me.lewisdeane.ldialogs.h((Context) LocalChapterListActivity1).b(2131034339).a(false).a(2131034367, (DialogInterface$OnClickListener) new k(LocalChapterListActivity1, String2)).b(2131034129, (DialogInterface$OnClickListener) new j(LocalChapterListActivity1)).b();
    }

    static C b(LocalChapterListActivity LocalChapterListActivity1) {
        return LocalChapterListActivity1.c;
    }

    static String c(LocalChapterListActivity LocalChapterListActivity1) {
        return LocalChapterListActivity1.g;
    }

    static String d(LocalChapterListActivity LocalChapterListActivity1) {
        return LocalChapterListActivity1.h;
    }

    static void e(LocalChapterListActivity LocalChapterListActivity1) {
        LocalChapterListActivity1.b();
    }

    static ProgressDialog f(LocalChapterListActivity LocalChapterListActivity1) {
        return LocalChapterListActivity1.f;
    }

    static View g(LocalChapterListActivity LocalChapterListActivity1) {
        return LocalChapterListActivity1.e;
    }

    static TextView h(LocalChapterListActivity LocalChapterListActivity1) {
        return LocalChapterListActivity1.a;
    }

    static ArrayList i(LocalChapterListActivity LocalChapterListActivity1) {
        ArrayList ArrayList2 = com.clilystudio.netbook.hpay100.a.a.D(LocalChapterListActivity1.g);
        ArrayList ArrayList3 = new ArrayList();
        Iterator Iterator4 = ArrayList2.iterator();

        while (Iterator4.hasNext()) {
            String String5 = (String) Iterator4.next();
            Toc Toc6;
            String String7;
            String String8;
            int int9;
            Object Object10;

            if (String5.contains((CharSequence) "MIX_TOC_ID") || String5.contains((CharSequence) "_"))
                continue;
            Toc6 = (Toc) com.clilystudio.netbook.hpay100.a.a.b(LocalChapterListActivity1.g, String5, "toc");
            String7 = LocalChapterListActivity1.g;
            String8 = new StringBuilder("/ZhuiShuShenQi/Chapter").append(File.separator).append(String7).append(File.separator).append(String5).toString();
            int9 = com.clilystudio.netbook.hpay100.a.a.b(new File(com.clilystudio.netbook.c.a, String8));
            if (Toc6 != null)
                --int9;
            if (int9 <= 0)
                continue;
            Object10 = new TocDownloadSummary();
            ((TocDownloadSummary) Object10).setTocId(String5);
            ((TocDownloadSummary) Object10).setCount(int9);
            if (Toc6 != null)
                ((TocDownloadSummary) Object10).setHostName(Toc6.getHost());
            else
                ((TocDownloadSummary) Object10).setHostName("\u672A\u77E5\u6765\u6E90");
            ArrayList3.add(Object10);
        }
        return ArrayList3;
    }

    private void b() {
        Object Object1 = new l(this);

        f = ProgressDialog.show((Context) this, null, (CharSequence) "\u8F7D\u5165\u4E2D...", true, true);
        f.setCanceledOnTouchOutside(false);
        new m(this, (Handler) Object1).start();
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903110);
        c(2131034469);
        g = getIntent().getStringExtra("BOOK_ID");
        h = getIntent().getStringExtra("BOOK_TITLE");
        a = (TextView) findViewById(2131493139);
        b = (ListView) findViewById(2131493137);
        e = LayoutInflater.from((Context) this).inflate(2130903381, (ViewGroup) b, false);
        b.addHeaderView(e, null, false);
        e.setVisibility(8);
        c = new C(getLayoutInflater());
        b.setAdapter((ListAdapter) c);
        b.setOnItemClickListener((AdapterView$OnItemClickListener) new h(this));
        b.setOnItemLongClickListener((AdapterView$OnItemLongClickListener) new i(this));
        if (!com.clilystudio.netbook.hpay100.a.a.d()) {
            a.setVisibility(0);
            a.setText((CharSequence) "\u65E0\u6CD5\u83B7\u53D6\u9884\u8BFB\u7AE0\u8282\uFF0C\u8BF7\u68C0\u67E5SD\u5361");
        } else
            b();
    }
}
