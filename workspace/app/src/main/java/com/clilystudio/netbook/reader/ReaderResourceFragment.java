package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.DateTimeUtil;
import com.clilystudio.netbook.util.CommonUtil;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReaderResourceFragment extends Fragment {
    private String a;
    private String b;
    private ListView c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;
    private TextView i;
    private View j;
    private TextView k;
    private BaseDownloadAdapter<TocSummary> l;

    private int index = -1;

    public static ReaderResourceFragment a(String string, String string2) {
        ReaderResourceFragment readerResourceFragment = new ReaderResourceFragment();
        Bundle bundle = new Bundle();
        bundle.putString("BOOK_ID", string);
        bundle.putString("BOOK_TITLE", string2);
        readerResourceFragment.setArguments(bundle);
        return readerResourceFragment;
    }

    static void a(ReaderResourceFragment readerResourceFragment, int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                readerResourceFragment.d.setVisibility(View.GONE);
                readerResourceFragment.e.setVisibility(View.GONE);
                readerResourceFragment.f.setVisibility(View.GONE);
                readerResourceFragment.j.setVisibility(View.VISIBLE);
                return;
            }
            case 3: {
                readerResourceFragment.d.setVisibility(View.GONE);
                readerResourceFragment.e.setVisibility(View.VISIBLE);
                readerResourceFragment.f.setVisibility(View.GONE);
                readerResourceFragment.j.setVisibility(View.VISIBLE);
                return;
            }
            case 2: {
                readerResourceFragment.d.setVisibility(View.GONE);
                readerResourceFragment.e.setVisibility(View.GONE);
                readerResourceFragment.f.setVisibility(View.VISIBLE);
                readerResourceFragment.j.setVisibility(View.GONE);
                return;
            }
            case 0:
        }
        readerResourceFragment.d.setVisibility(View.VISIBLE);
        readerResourceFragment.e.setVisibility(View.GONE);
        readerResourceFragment.f.setVisibility(View.GONE);
        readerResourceFragment.j.setVisibility(View.GONE);
    }

    static void a(ReaderResourceFragment readerResourceFragment, List list) {
        TextView textView = readerResourceFragment.k;
        Resources resources = readerResourceFragment.getResources();
        Object[] arrobject = new Object[]{list.size()};
        textView.setText(resources.getString(R.string.source_list_title, arrobject));
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        View view = LayoutInflater.from(this.getActivity()).inflate(R.layout.reader_resource_header, this.c, false);
        this.c.addHeaderView(view, null, false);
        this.g = view.findViewById(R.id.resource_last_read_layout);
        this.i = (TextView) view.findViewById(R.id.resource_last_read_title);
        this.j = view.findViewById(R.id.resource_count_layout);
        this.k = (TextView) view.findViewById(R.id.resource_count);
        this.h = view.findViewById(R.id.resource_header_download_layout);
        this.h.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = LocalChapterListActivity.a(ReaderResourceFragment.this.getActivity(), ReaderResourceFragment.this.a, ReaderResourceFragment.this.b);
                ReaderResourceFragment.this.startActivity(intent);
            }
        });
        this.l = new BaseDownloadAdapter<TocSummary>(this.getActivity().getLayoutInflater(), R.layout.list_item_resource) {

            @Override
            protected void a(int var1, TocSummary tocSummary) {
                this.setText(0, tocSummary.getHost());
                this.setText(1, DateTimeUtil.e(tocSummary.getUpdated()));
                if (new Date().getTime() - tocSummary.getUpdated().getTime() < 3600000) {
                    TextView textView = this.getTagView(1);
                    textView.setTextColor(getResources().getColor(R.color.deprecated_red));
                    ImageView imageView = this.getTagView(2);
                    imageView.setImageLevel(1);
                } else {
                    TextView textView = this.getTagView(1);
                    textView.setTextColor(getResources().getColor(R.color.third_text_normal));
                    ImageView imageView = this.getTagView(2);
                    imageView.setImageLevel(0);
                }
                this.setText(3, tocSummary.getLastChapter());
                if (index == var1) {
                    this.setVisibility(4, false);
                } else {
                    this.setVisibility(4, true);
                }
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.tv_name, R.id.tv_updated, R.id.iv_ic_updated, R.id.tv_last_chapter, R.id.resource_list_item_last_select};
            }
        };
        this.c.setAdapter(this.l);
        this.c.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int n3 = position - ReaderResourceFragment.this.c.getHeaderViewsCount();
                if (n3 >= 0) {
                    TocSummary tocSummary = ReaderResourceFragment.this.l.getItem(n3);
                    Intent intent = ReaderActivity.a(getActivity(), ReaderResourceFragment.this.a, ReaderResourceFragment.this.b, tocSummary.get_id(),  (String)null, true);
                    startActivity(intent);
                    index = n3;
                }
            }
        });
        BaseAsyncTask<String, Void, List<TocSummary>> bY2 = new BaseAsyncTask<String, Void, List<TocSummary>>() {

            @Override
            protected List<TocSummary> doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().getTocSummaryList(params[0]);
            }

            @Override
            protected void onPostExecute(List<TocSummary> tocSummaries) {
                super.onPostExecute(tocSummaries);
                if (getActivity() == null) return;
                if (tocSummaries != null) {
                    if (!tocSummaries.isEmpty()) {
                        ReaderResourceFragment.a(ReaderResourceFragment.this, 1);
                        ReaderResourceFragment.a(ReaderResourceFragment.this, tocSummaries);
                        ReaderResourceFragment.this.l.a(tocSummaries);
                    } else {
                        ReaderResourceFragment.a(ReaderResourceFragment.this, 3);
                    }
                } else {
                    ReaderResourceFragment.a(ReaderResourceFragment.this, 2);
                }
            }
        };
        String[] arrstring = new String[]{this.a};
        bY2.b(arrstring);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BusProvider.getInstance().register(this);
        this.a = this.getArguments().getString("BOOK_ID");
        this.b = this.getArguments().getString("BOOK_TITLE");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_resource_list, viewGroup, false);
        this.d = view.findViewById(R.id.pb_loading);
        this.e = view.findViewById(R.id.empty);
        this.f = view.findViewById(R.id.load_error_hint);
        this.c = (ListView) view.findViewById(R.id.list);
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderResourceFragment.a(ReaderResourceFragment.this, 0);
                new BaseAsyncTask<String, Void, List<TocSummary>>() {

                    @Override
                    protected List<TocSummary> doInBackground(String... params) {
                        ApiServiceProvider.getInstance();
                        return ApiServiceProvider.getApiService().getTocSummaryList(params[0]);
                    }

                    @Override
                    protected void onPostExecute(List<TocSummary> tocSummaries) {
                        super.onPostExecute(tocSummaries);
                        if (getActivity() == null) return;
                        if (tocSummaries != null) {
                            if (!tocSummaries.isEmpty()) {
                                ReaderResourceFragment.a(ReaderResourceFragment.this, 1);
                                ReaderResourceFragment.a(ReaderResourceFragment.this, tocSummaries);
                                ReaderResourceFragment.this.l.a(tocSummaries);
                            } else {
                                ReaderResourceFragment.a(ReaderResourceFragment.this, 3);
                            }
                        } else {
                            ReaderResourceFragment.a(ReaderResourceFragment.this, 2);
                        }
                    }
                }.b(ReaderResourceFragment.this.a);
            }
        });
        return view;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResume() {
        boolean bl;
        block11:
        {
            super.onResume();
            BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(this.a);
            if (bookReadRecord == null || bookReadRecord.getTocId() == null) {
                this.g.setVisibility(View.GONE);
            } else {
                final String string = bookReadRecord.getTocId();
                TocReadRecord tocReadRecord = TocReadRecord.get(string);
                if (tocReadRecord != null) {
                    this.g.setVisibility(View.VISIBLE);
                    this.i.setText(tocReadRecord.getChapterTitle());
                    this.g.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            startActivity(ReaderActivity.a(getActivity(), ReaderResourceFragment.this.a, ReaderResourceFragment.this.b, string, (String)null, false));
                        }
                    });
                } else {
                    this.g.setVisibility(View.GONE);
                }
            }
            String string = this.a;
            if (CommonUtil.isMounted()) {
                ArrayList<String> subFileList = CommonUtil.getSubFileList(new File(CachePathConst.RootPath, "/ZhuiShuShenQi/Chapter" + File.separator + string));
                for (String string2 : subFileList) {
                    if (string2.contains("MIX_TOC_ID") || string2.contains("_")) continue;
                    ArrayList<String> fileList = CommonUtil.getSubFileList(new File(CachePathConst.RootPath, "/ZhuiShuShenQi/Chapter" + File.separator + string + File.separator + string2));
                    for (String s : fileList) {
                        if ("toc".equals(s)) continue;
                        bl = true;
                        break block11;
                    }
                }
            }
            bl = false;
        }
        if (bl) {
            this.h.setVisibility(View.VISIBLE);
            int n2 = CommonUtil.getDipSize(this.getActivity(), 55.0f);
            int n3 = CommonUtil.getDipSize(this.getActivity(), 40.0f);
            if (this.g.getVisibility() == View.VISIBLE) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, n2);
                layoutParams.setMargins(0, 0, 0, 0);
                this.h.setLayoutParams(layoutParams);
            } else {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, n2);
                layoutParams.setMargins(0, n3, 0, 0);
                this.h.setLayoutParams(layoutParams);
            }
        } else {
            this.h.setVisibility(View.GONE);
        }
        this.l.notifyDataSetChanged();
    }
}
