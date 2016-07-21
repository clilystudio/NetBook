package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ModeChangedEvent;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.DateTimeUtil;

import java.util.Iterator;
import java.util.List;

public class ReaderMixActivity extends BaseLoadingActivity {
    private String a;
    private String b;
    private String c;
    private ListView e;
    private BaseDownloadAdapter<TocSummary> f;
    private View g;
    private ChineseAllPromRoot h;
    private View i;
    private View j;
    private TocSummary k;

    public static Intent a(Context context, String bookId, String bookTitle, String source) {
        return new IntentBuilder().put(context, ReaderMixActivity.class).put("BOOK_ID", bookId).put("BOOK_TITLE", bookTitle).put("SOURCE", source).build();
    }

    static void e(final ReaderMixActivity readerMixActivity) {
        readerMixActivity.i.setVisibility(View.VISIBLE);
        readerMixActivity.j.setVisibility(View.GONE);
        final String string = readerMixActivity.k.getHost();
        if (string.equals(readerMixActivity.c)) {
            readerMixActivity.i.findViewById(R.id.txt_cp_header_selected).setVisibility(View.VISIBLE);
        }
        readerMixActivity.i.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!string.equals(readerMixActivity.c)) {
                    MyApplication.getInstance().setBookId(readerMixActivity.a);
                    CommonUtil.setReadMode(readerMixActivity.a, 9);
                    BusProvider.getInstance().post(new ModeChangedEvent(1));
                    readerMixActivity.startActivity(ReaderActivity.a(readerMixActivity, readerMixActivity.a, readerMixActivity.b, readerMixActivity.k.get_id(), (String)null, true));
                }
                readerMixActivity.finish();
            }
        });
    }

    @Override
    protected final void b() {
        this.i();
        BaseAsyncTask<String, Void, Object[]> bE2 = new BaseAsyncTask<String, Void, Object[]>() {

            @Override
            protected Object[] doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                ApiService apiService = ApiServiceProvider.getApiService();
                return new Object[]{apiService.d(params[0]), apiService.getChineseAllPromRoot(params[0])};
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
                String string = resources.getString(R.string.source_list_title, list.size() - 1);
                assert textView != null;
                textView.setText(string);
                Iterator iterator = list.iterator();
                boolean bl = false;
                while (iterator.hasNext()) {
                    boolean bl2;
                    TocSummary tocSummary = (TocSummary) iterator.next();
                    if ("zhuishuvip".equals(tocSummary.getSource())) {
                        ReaderMixActivity.this.k = tocSummary;
                        bl2 = true;
                    } else {
                        bl2 = bl;
                    }
                    bl = bl2;
                }
                ReaderMixActivity.this.f.a(list);
                ReaderMixActivity.this.h = (ChineseAllPromRoot) objects[1];
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
        this.f = new BaseDownloadAdapter<TocSummary>(this.getLayoutInflater(), R.layout.list_item_mix_source) {

            @Override
            protected void a(int var1, TocSummary tocSummary) {
                String string = tocSummary.getHost();
                ImageView imageView = this.getTagView(0);
                TextView textView = this.getTagView(1);
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
                this.setText(2, string);
                this.setText(3, DateTimeUtil.e(tocSummary.getUpdated()) + "\uff1a");
                this.setText(4, tocSummary.getLastChapter());
                if (string.equals(ReaderMixActivity.this.c)) {
                    this.setVisibility(5, false);
                    return;
                }
                this.setVisibility(5, true);

            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.source_icon_logo, R.id.source_icon_text, R.id.source, R.id.update_time, R.id.last_chapter, R.id.selected};
            }
        };
        this.e = (ListView) this.findViewById(R.id.content_list);
        assert this.e != null;
        this.e.setFooterDividersEnabled(true);
        View view = LayoutInflater.from(this).inflate(R.layout.reader_mix_header, this.e, false);
        this.g = view.findViewById(R.id.promo_section);
        this.e.addHeaderView(view, null, false);
        View view2 = this.findViewById(R.id.reader_mix_header_item);
        View view3 = this.findViewById(R.id.reader_mix_header_selected);
        if ("mix".equals(this.c)) {
            assert view3 != null;
            view3.setVisibility(View.VISIBLE);
        }
        assert view2 != null;
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!"mix".equals(ReaderMixActivity.this.c)) {
                    MyApplication.getInstance().setBookId(ReaderMixActivity.this.a);
                    CommonUtil.setReadMode(ReaderMixActivity.this.a, 5);
                    BusProvider.getInstance().post(new ModeChangedEvent(1));
                    startActivity(ReaderActivity.a(ReaderMixActivity.this, ReaderMixActivity.this.a, ReaderMixActivity.this.b, "MIX_TOC_ID", (String)null, true));
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
                int n2 = position - ReaderMixActivity.this.e.getHeaderViewsCount();
                TocSummary tocSummary = ReaderMixActivity.this.f.getItem(n2);
                if (!tocSummary.getHost().equals(ReaderMixActivity.this.c)) {
                    MyApplication.getInstance().setBookId(ReaderMixActivity.this.a);
                    if ("vip.zhuishushenqi.com".equals(ReaderMixActivity.this.c)) {
                        CommonUtil.setReadMode(ReaderMixActivity.this.a, 9);
                    } else {
                        CommonUtil.setReadMode(ReaderMixActivity.this.a, 10);
                    }
                    BusProvider.getInstance().post(new ModeChangedEvent(1));
                    startActivity(ReaderActivity.a(ReaderMixActivity.this, ReaderMixActivity.this.a, ReaderMixActivity.this.b, tocSummary.get_id(), (String)null, true));
                }
                ReaderMixActivity.this.finish();
            }
        });
        this.b();
    }
}
