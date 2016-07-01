package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ReaderMixActivity extends BaseLoadingActivity {
    private String a;
    private String b;
    private String c;
    private ListView e;
    private com.clilystudio.netbook.util.W<TocSummary> f;
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

    static /* synthetic */ W<TocSummary> d(ReaderMixActivity readerMixActivity) {
        return readerMixActivity.f;
    }

    static /* synthetic */ void e(final ReaderMixActivity readerMixActivity) {
        readerMixActivity.i.setVisibility(View.VISIBLE);
        readerMixActivity.j.setVisibility(View.GONE);
        final String string = readerMixActivity.k.getHost();
        if (string.equals(readerMixActivity.c)) {
            readerMixActivity.i.findViewById(R.id.txt_cp_header_selected).setVisibility(View.VISIBLE);
        }
        readerMixActivity.i.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!string.equals(ReaderMixActivity.a(readerMixActivity))) {
                    MyApplication.a().c(ReaderMixActivity.b(readerMixActivity));
                    am.c((String) ReaderMixActivity.b(readerMixActivity), (int) 9);
                    com.clilystudio.netbook.event.i.a().post(new v(1));
                    ReaderMixActivity.a(readerMixActivity, ReaderMixActivity.f(readerMixActivity).get_id());
                }
                readerMixActivity.finish();
            }
        });
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
        com.clilystudio.netbook.a_pack.e<String, Void, Object[]> bE2 = new e<String, Void, Object[]>() {

            @Override
            protected Object[] doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                ApiService apiService = com.clilystudio.netbook.api.b.b();
                Object[] arrobject = new Object[]{apiService.d(params[0]), apiService.aa(params[0])};
                return arrobject;
            }

            @Override
            protected void onPostExecute(Object[] objects) {
                if (objects == null) return;
                List list = (List) objects[0];
                if (list == null) {
                    ReaderMixActivity.this.h();
                    return;
                }
                if (list.isEmpty()) {
                    ReaderMixActivity.this.g();
                    return;
                }
                ReaderMixActivity.this.f();
                TextView textView = (TextView) ReaderMixActivity.this.findViewById(R.id.reader_mix_header_count);
                Resources resources = ReaderMixActivity.this.getResources();
                textView.setText(resources.getString(R.string.source_list_title, list.size() - 1));
                Iterator iterator = list.iterator();
                boolean bl = false;
                while (iterator.hasNext()) {
                    boolean bl2;
                    TocSummary tocSummary = (TocSummary) iterator.next();
                    if ("zhuishuvip".equals(tocSummary.getSource())) {
                        ReaderMixActivity.a(ReaderMixActivity.this, tocSummary);
                        bl2 = true;
                    } else {
                        bl2 = bl;
                    }
                    bl = bl2;
                }
                ReaderMixActivity.d(ReaderMixActivity.this).a(list);
                ReaderMixActivity.a(ReaderMixActivity.this, (ChineseAllPromRoot) objects[1]);
                ReaderMixActivity.this.g.setVisibility(View.GONE);
            }
        };
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
        this.f = new W<TocSummary>(this.getLayoutInflater(), R.layout.list_item_mix_source) {

            @Override
            protected void a(int var1, TocSummary tocSummary) {
                String string = tocSummary.getHost();
                ImageView imageView = (ImageView) this.a(0, ImageView.class);
                TextView textView = (TextView) this.a(1, TextView.class);
                if (string.contains("baidu")) {
                    imageView.setVisibility(View.VISIBLE);
                    textView.setVisibility(View.GONE);
                    imageView.setImageResource(R.drawable.mode_list_item_bd);
                } else if (string.contains("leidian")) {
                    imageView.setVisibility(View.VISIBLE);
                    textView.setVisibility(View.GONE);
                    imageView.setImageResource(R.drawable.mode_list_item_ld);
                } else if (string.contains("sogou")) {
                    imageView.setVisibility(View.VISIBLE);
                    textView.setVisibility(View.GONE);
                    imageView.setImageResource(R.drawable.mode_list_item_sg);
                } else if (string.contains("easou")) {
                    imageView.setVisibility(View.VISIBLE);
                    textView.setVisibility(View.GONE);
                    imageView.setImageResource(R.drawable.mode_list_item_es);
                } else {
                    imageView.setVisibility(View.GONE);
                    textView.setVisibility(View.VISIBLE);
                    textView.setText(string.substring(0, 1).toUpperCase());
                }
                this.a(2, string);
                this.a(3, t.e((Date) tocSummary.getUpdated()) + "\uff1a");
                this.a(4, tocSummary.getLastChapter());
                if (string.equals(ReaderMixActivity.a(ReaderMixActivity.this))) {
                    this.a(5, false);
                    return;
                }
                this.a(5, true);

            }

            @Override
            protected int[] a() {
                return new int[]{R.id.source_icon_logo, R.id.source_icon_text, R.id.source, R.id.update_time, R.id.last_chapter, R.id.selected};
            }
        };
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
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!"mix".equals(ReaderMixActivity.a(ReaderMixActivity.this))) {
                    MyApplication.a().c(ReaderMixActivity.b(ReaderMixActivity.this));
                    com.clilystudio.netbook.am.c((String) ReaderMixActivity.b(ReaderMixActivity.this), (int) 5);
                    com.clilystudio.netbook.event.i.a().post(new v(1));
                    ReaderMixActivity.a(ReaderMixActivity.this, "MIX_TOC_ID");
                }
                ReaderMixActivity.this.finish();
            }
        });
        this.i = this.findViewById(R.id.reader_cp_header);
        this.j = this.findViewById(R.id.txt_label);
        this.e.setAdapter(this.f);
        this.e.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int n2 = position - ReaderMixActivity.c(ReaderMixActivity.this).getHeaderViewsCount();
                TocSummary tocSummary = (TocSummary) ReaderMixActivity.d(ReaderMixActivity.this).getItem(n2);
                if (!tocSummary.getHost().equals(ReaderMixActivity.a(ReaderMixActivity.this))) {
                    MyApplication.a().c(ReaderMixActivity.b(ReaderMixActivity.this));
                    if ("vip.zhuishushenqi.com".equals(ReaderMixActivity.a(ReaderMixActivity.this))) {
                        am.c((String) ReaderMixActivity.b(ReaderMixActivity.this), (int) 9);
                    } else {
                        am.c((String) ReaderMixActivity.b(ReaderMixActivity.this), (int) 10);
                    }
                    i.a().c(new v(1));
                    ReaderMixActivity.a(ReaderMixActivity.this, tocSummary.get_id());
                }
                ReaderMixActivity.this.finish();
            }
        });
        this.b();
    }
}
