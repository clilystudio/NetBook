package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.B;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.TocReadRecord;

import java.util.Iterator;
import java.util.List;

public class ReaderResourceFragment
        extends Fragment {
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
                readerResourceFragment.d.setVisibility(8);
                readerResourceFragment.e.setVisibility(8);
                readerResourceFragment.f.setVisibility(8);
                readerResourceFragment.j.setVisibility(0);
                return;
            }
            case 3: {
                readerResourceFragment.d.setVisibility(8);
                readerResourceFragment.e.setVisibility(0);
                readerResourceFragment.f.setVisibility(8);
                readerResourceFragment.j.setVisibility(0);
                return;
            }
            case 2: {
                readerResourceFragment.d.setVisibility(8);
                readerResourceFragment.e.setVisibility(8);
                readerResourceFragment.f.setVisibility(0);
                readerResourceFragment.j.setVisibility(8);
                return;
            }
            case 0:
        }
        readerResourceFragment.d.setVisibility(0);
        readerResourceFragment.e.setVisibility(8);
        readerResourceFragment.f.setVisibility(8);
        readerResourceFragment.j.setVisibility(8);
    }

    static /* synthetic */ void a(ReaderResourceFragment readerResourceFragment, String string) {
        readerResourceFragment.startActivity(ReaderActivity.a(readerResourceFragment.getActivity(), readerResourceFragment.a, readerResourceFragment.b, string, null, false));
    }

    static /* synthetic */ void a(ReaderResourceFragment readerResourceFragment, List list) {
        TextView textView = readerResourceFragment.k;
        Resources resources = readerResourceFragment.getResources();
        Object[] arrobject = new Object[]{list.size()};
        textView.setText(resources.getString(2131034520, arrobject));
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
        View view = LayoutInflater.from(this.getActivity()).inflate(2130903374, (ViewGroup) this.c, false);
        this.c.addHeaderView(view, null, false);
        this.g = view.findViewById(2131493940);
        this.i = (TextView) view.findViewById(2131493943);
        this.j = view.findViewById(2131493946);
        this.k = (TextView) view.findViewById(2131493947);
        this.h = view.findViewById(2131493944);
        this.h.setOnClickListener(new bW(this));
        this.l = new B(this.getActivity().getLayoutInflater());
        this.c.setAdapter(this.l);
        this.c.setOnItemClickListener(new bV(this));
        bY bY2 = new bY(this, 0);
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
        View view = layoutInflater.inflate(2130903219, null);
        this.d = view.findViewById(2131493085);
        this.e = view.findViewById(2131493181);
        this.f = view.findViewById(2131493138);
        this.c = (ListView) view.findViewById(2131492924);
        this.f.setOnClickListener(new bU(this));
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
                this.g.setVisibility(8);
            } else {
                String string = bookReadRecord.getTocId();
                TocReadRecord tocReadRecord = TocReadRecord.get(string);
                if (tocReadRecord != null) {
                    this.g.setVisibility(0);
                    this.i.setText(tocReadRecord.getChapterTitle());
                    this.g.setOnClickListener(new bX(this, string));
                } else {
                    this.g.setVisibility(8);
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
            this.h.setVisibility(0);
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
            this.h.setVisibility(8);
        }
        this.l.notifyDataSetChanged();
    }
}
