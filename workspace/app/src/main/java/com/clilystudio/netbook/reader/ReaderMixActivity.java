package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.ui.BaseLoadingActivity;

public class ReaderMixActivity extends BaseLoadingActivity {

    private String a;
    private String b;
    private String c;
    private ListView e;
    private bG f;
    private View g;
    private ChineseAllPromRoot h;
    private View i;
    private View j;
    private TocSummary k;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3, String String4) {
    }

    static ChineseAllPromRoot a(ReaderMixActivity ReaderMixActivity1, ChineseAllPromRoot ChineseAllPromRoot2) {
        ReaderMixActivity1.h = ChineseAllPromRoot2;
        return ChineseAllPromRoot2;
    }

    static TocSummary a(ReaderMixActivity ReaderMixActivity1, TocSummary TocSummary2) {
        ReaderMixActivity1.k = TocSummary2;
        return TocSummary2;
    }

    static String a(ReaderMixActivity ReaderMixActivity1) {
        return ReaderMixActivity1.c;
    }

    static void a(ReaderMixActivity ReaderMixActivity1, String String2) {
        ReaderMixActivity1.startActivity(ReaderActivity.a((Context) ReaderMixActivity1, ReaderMixActivity1.a, ReaderMixActivity1.b, String2, null, true));
    }

    static String b(ReaderMixActivity ReaderMixActivity1) {
        return ReaderMixActivity1.a;
    }

    static ListView c(ReaderMixActivity ReaderMixActivity1) {
        return ReaderMixActivity1.e;
    }

    static bG d(ReaderMixActivity ReaderMixActivity1) {
        return ReaderMixActivity1.f;
    }

    static void e(ReaderMixActivity ReaderMixActivity1) {
        String String2;

        ReaderMixActivity1.i.setVisibility(0);
        ReaderMixActivity1.j.setVisibility(8);
        String2 = ReaderMixActivity1.k.getHost();
        if (String2.equals(ReaderMixActivity1.c))
            ReaderMixActivity1.i.findViewById(2131493875).setVisibility(0);
        ReaderMixActivity1.i.setOnClickListener((View$OnClickListener) new bD(ReaderMixActivity1, String2));
    }

    static TocSummary f(ReaderMixActivity ReaderMixActivity1) {
        return ReaderMixActivity1.k;
    }

    static ChineseAllPromRoot g(ReaderMixActivity ReaderMixActivity1) {
        return ReaderMixActivity1.h;
    }

    static View h(ReaderMixActivity ReaderMixActivity1) {
        return ReaderMixActivity1.g;
    }

    protected final void b() {
        bE bE1;
        String[] String_1darray2;

        i();
        bE1 = new bE(this, (byte) 0);
        String_1darray2 = new String[1];
        String_1darray2[0] = a;
        bE1.b(String_1darray2);
    }

    protected void onCreate(Bundle Bundle1) {
        View View2;
        View View3;
        View View4;

        super.onCreate(Bundle1);
        a(2130903321);
        c(2131034482);
        d(2130837881);
        a = getIntent().getStringExtra("BOOK_ID");
        b = getIntent().getStringExtra("BOOK_TITLE");
        c = getIntent().getStringExtra("SOURCE");
        f = new bG(this, getLayoutInflater());
        e = (ListView) findViewById(2131493135);
        e.setFooterDividersEnabled(true);
        View2 = LayoutInflater.from((Context) this).inflate(2130903364, (ViewGroup) e, false);
        g = View2.findViewById(2131493879);
        e.addHeaderView(View2, null, false);
        View3 = findViewById(2131493877);
        View4 = findViewById(2131493878);
        if ("mix".equals(c))
            View4.setVisibility(0);
        View3.setOnClickListener((View$OnClickListener) new bB(this));
        i = findViewById(2131493872);
        j = findViewById(2131493876);
        e.setAdapter((ListAdapter) f);
        e.setOnItemClickListener((AdapterView$OnItemClickListener) new bC(this));
        b();
    }
}
