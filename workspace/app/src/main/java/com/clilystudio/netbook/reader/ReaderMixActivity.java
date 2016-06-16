package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import com.clilystudio.netbook.d;
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

    public static Intent a(Context context, String string, String string2, String string3) {
        return new d().a(context, ReaderMixActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("SOURCE", string3).a();
    }

    static /* synthetic */ ChineseAllPromRoot a(ReaderMixActivity readerMixActivity, ChineseAllPromRoot chineseAllPromRoot) {
        readerMixActivity.h = chineseAllPromRoot;
        return chineseAllPromRoot;
    }

    static /* synthetic */ TocSummary a(ReaderMixActivity readerMixActivity, TocSummary tocSummary) {
        readerMixActivity.k = tocSummary;
        return tocSummary;
    }

    static /* synthetic */ String a(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.c;
    }

    static /* synthetic */ void a(ReaderMixActivity readerMixActivity, String string) {
        readerMixActivity.startActivity(ReaderActivity.a(readerMixActivity, readerMixActivity.a, readerMixActivity.b, string, null, true));
    }

    static /* synthetic */ String b(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.a;
    }

    static /* synthetic */ ListView c(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.e;
    }

    static /* synthetic */ bG d(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.f;
    }

    static /* synthetic */ void e(ReaderMixActivity readerMixActivity) {
        readerMixActivity.i.setVisibility(View.VISIBLE);
        readerMixActivity.j.setVisibility(View.GONE);
        String string = readerMixActivity.k.getHost();
        if (string.equals(readerMixActivity.c)) {
            readerMixActivity.i.findViewById(R.id.txt_cp_header_selected).setVisibility(View.VISIBLE);
        }
        readerMixActivity.i.setOnClickListener(new bD(readerMixActivity, string));
    }

    static /* synthetic */ TocSummary f(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.k;
    }

    static /* synthetic */ ChineseAllPromRoot g(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.h;
    }

    static /* synthetic */ View h(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.g;
    }

    @Override
    protected final void b() {
        this.i();
        bE bE2 = new bE(this, 0);
        String[] arrstring = new String[]{this.a};
        bE2.b(arrstring);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.listview);
        this.c(R.string.select_read_resources);
        this.d(R.drawable.ic_close_white_24dp);
        this.a = this.getIntent().getStringExtra("BOOK_ID");
        this.b = this.getIntent().getStringExtra("BOOK_TITLE");
        this.c = this.getIntent().getStringExtra("SOURCE");
        this.f = new bG(this, this.getLayoutInflater());
        this.e = (ListView) this.findViewById(R.id.content_list);
        this.e.setFooterDividersEnabled(true);
        View view = LayoutInflater.from(this).inflate(R.layout.reader_mix_header, (ViewGroup) this.e, false);
        this.g = view.findViewById(R.id.promo_section);
        this.e.addHeaderView(view, null, false);
        View view2 = this.findViewById(R.id.reader_mix_header_item);
        View view3 = this.findViewById(R.id.reader_mix_header_selected);
        if ("mix".equals(this.c)) {
            view3.setVisibility(View.VISIBLE);
        }
        view2.setOnClickListener(new bB(this));
        this.i = this.findViewById(R.id.reader_cp_header);
        this.j = this.findViewById(R.id.txt_label);
        this.e.setAdapter(this.f);
        this.e.setOnItemClickListener(new bC(this));
        this.b();
    }
}
