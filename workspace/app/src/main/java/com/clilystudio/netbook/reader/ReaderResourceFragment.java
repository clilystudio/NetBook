package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.B;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.TocReadRecord;

import java.util.Iterator;
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
    private B l;

    public static ReaderResourceFragment a(String string, String string2) {
        ReaderResourceFragment readerResourceFragment = new ReaderResourceFragment();
        Bundle bundle = new Bundle();
        bundle.putString("BOOK_ID", string);
        bundle.putString("BOOK_TITLE", string2);
        readerResourceFragment.setArguments(bundle);
        return readerResourceFragment;
    }

    static /* synthetic */ String a(ReaderResourceFragment readerResourceFragment) {
        return readerResourceFragment.a;
    }

    static /* synthetic */ void a(ReaderResourceFragment readerResourceFragment, int n) {
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

    static /* synthetic */ void a(ReaderResourceFragment readerResourceFragment, String string) {
        readerResourceFragment.startActivity(ReaderActivity.a(readerResourceFragment.getActivity(), readerResourceFragment.a, readerResourceFragment.b, string, null, false));
    }

    static /* synthetic */ void a(ReaderResourceFragment readerResourceFragment, List list) {
        TextView textView = readerResourceFragment.k;
        Resources resources = readerResourceFragment.getResources();
        Object[] arrobject = new Object[]{list.size()};
        textView.setText(resources.getString(R.string.source_list_title, arrobject));
    }

    static /* synthetic */ ListView b(ReaderResourceFragment readerResourceFragment) {
        return readerResourceFragment.c;
    }

    static /* synthetic */ B c(ReaderResourceFragment readerResourceFragment) {
        return readerResourceFragment.l;
    }

    static /* synthetic */ String d(ReaderResourceFragment readerResourceFragment) {
        return readerResourceFragment.b;
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        View view = LayoutInflater.from(this.getActivity()).inflate(R.layout.reader_resource_header, (ViewGroup) this.c, false);
        this.c.addHeaderView(view, null, false);
        this.g = view.findViewById(R.id.resource_last_read_layout);
        this.i = (TextView) view.findViewById(R.id.resource_last_read_title);
        this.j = view.findViewById(R.id.resource_count_layout);
        this.k = (TextView) view.findViewById(R.id.resource_count);
        this.h = view.findViewById(R.id.resource_header_download_layout);
        this.h.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = LocalChapterListActivity.a(ReaderResourceFragment.this.getActivity(), ReaderResourceFragment.a(ReaderResourceFragment.this), ReaderResourceFragment.d(ReaderResourceFragment.this));
                ReaderResourceFragment.this.startActivity(intent);
            }
        });
        this.l = new B(this.getActivity().getLayoutInflater());
        this.c.setAdapter(this.l);
        this.c.setOnItemClickListener(new bV(this));
        bY bY2 = new bY(this, (byte)0);
        String[] arrstring = new String[]{this.a};
        bY2.b(arrstring);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        i.a().a(this);
        this.a = this.getArguments().getString("BOOK_ID");
        this.b = this.getArguments().getString("BOOK_TITLE");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_resource_list, null);
        this.d = view.findViewById(R.id.pb_loading);
        this.e = view.findViewById(R.id.empty);
        this.f = view.findViewById(R.id.load_error_hint);
        this.c = (ListView) view.findViewById(R.id.list);
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderResourceFragment.a(ReaderResourceFragment.this, 0);
                bY bY2 = new bY(ReaderResourceFragment.this, (byte)0);
                String[] arrstring = new String[]{ReaderResourceFragment.a(ReaderResourceFragment.this)};
                bY2.b(arrstring);
            }
        });
        return view;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        i.a().b(this);
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
                            ReaderResourceFragment.a(ReaderResourceFragment.this, string);
                        }
                    });
                } else {
                    this.g.setVisibility(View.GONE);
                }
            }
            String string = this.a;
            if (a.d()) {
                for (String string2 : a.D(string)) {
                    if (string2.contains("MIX_TOC_ID") || string2.contains("_")) continue;
                    Iterator<String> iterator = a.j(string, string2).iterator();
                    while (iterator.hasNext()) {
                        if ("toc".equals(iterator.next())) continue;
                        bl = true;
                        break block11;
                    }
                }
            }
            bl = false;
        }
        if (bl) {
            this.h.setVisibility(View.VISIBLE);
            int n2 = a.a((Context) this.getActivity(), 55.0f);
            int n3 = a.a((Context) this.getActivity(), 40.0f);
            if (this.g.getVisibility() == 0) {
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
