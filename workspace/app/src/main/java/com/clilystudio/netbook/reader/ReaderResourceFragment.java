package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.LinearLayout$LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

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

    public static ReaderResourceFragment a(String String1, String String2) {
        ReaderResourceFragment ReaderResourceFragment3 = new ReaderResourceFragment();
        Bundle Bundle4 = new Bundle();

        Bundle4.putString("BOOK_ID", String1);
        Bundle4.putString("BOOK_TITLE", String2);
        ReaderResourceFragment3.setArguments(Bundle4);
        return ReaderResourceFragment3;
    }

    static String a(ReaderResourceFragment ReaderResourceFragment1) {
        return ReaderResourceFragment1.a;
    }

    static void a(ReaderResourceFragment ReaderResourceFragment1, int int2) {
        switch (int2) {
            default:
                return;
            case 1:
                ReaderResourceFragment1.d.setVisibility(8);
                ReaderResourceFragment1.e.setVisibility(8);
                ReaderResourceFragment1.f.setVisibility(8);
                ReaderResourceFragment1.j.setVisibility(0);
                return;
            case 3:
                ReaderResourceFragment1.d.setVisibility(8);
                ReaderResourceFragment1.e.setVisibility(0);
                ReaderResourceFragment1.f.setVisibility(8);
                ReaderResourceFragment1.j.setVisibility(0);
                return;
            case 2:
                ReaderResourceFragment1.d.setVisibility(8);
                ReaderResourceFragment1.e.setVisibility(8);
                ReaderResourceFragment1.f.setVisibility(0);
                ReaderResourceFragment1.j.setVisibility(8);
                return;
            case 0:
                ReaderResourceFragment1.d.setVisibility(0);
                ReaderResourceFragment1.e.setVisibility(8);
                ReaderResourceFragment1.f.setVisibility(8);
                ReaderResourceFragment1.j.setVisibility(8);
                return;
        }
    }

    static void a(ReaderResourceFragment ReaderResourceFragment1, String String2) {
        ReaderResourceFragment1.startActivity(ReaderActivity.a((Context) ReaderResourceFragment1.getActivity(), ReaderResourceFragment1.a, ReaderResourceFragment1.b, String2, null, false));
    }

    static void a(ReaderResourceFragment ReaderResourceFragment1, List List2) {
        TextView TextView3 = ReaderResourceFragment1.k;
        Resources Resources4 = ReaderResourceFragment1.getResources();
        Object[] Object_1darray5 = new Object[1];

        Object_1darray5[0] = Integer.valueOf(List2.size());
        TextView3.setText((CharSequence) Resources4.getString(2131034520, Object_1darray5));
    }

    static ListView b(ReaderResourceFragment ReaderResourceFragment1) {
        return ReaderResourceFragment1.c;
    }

    static B c(ReaderResourceFragment ReaderResourceFragment1) {
        return ReaderResourceFragment1.l;
    }

    static String d(ReaderResourceFragment ReaderResourceFragment1) {
        return ReaderResourceFragment1.b;
    }

    public void onActivityCreated(Bundle Bundle1) {
        View View2;
        bY bY3;
        String[] String_1darray4;

        super.onActivityCreated(Bundle1);
        View2 = LayoutInflater.from((Context) getActivity()).inflate(2130903374, (ViewGroup) c, false);
        c.addHeaderView(View2, null, false);
        g = View2.findViewById(2131493940);
        i = (TextView) View2.findViewById(2131493943);
        j = View2.findViewById(2131493946);
        k = (TextView) View2.findViewById(2131493947);
        h = View2.findViewById(2131493944);
        h.setOnClickListener((View$OnClickListener) new bW(this));
        l = new B(getActivity().getLayoutInflater());
        c.setAdapter((ListAdapter) l);
        c.setOnItemClickListener((AdapterView$OnItemClickListener) new bV(this));
        bY3 = new bY(this, (byte) 0);
        String_1darray4 = new String[1];
        String_1darray4[0] = a;
        bY3.b(String_1darray4);
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        com.clilystudio.netbook.event.i.a().a(this);
        a = getArguments().getString("BOOK_ID");
        b = getArguments().getString("BOOK_TITLE");
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View4 = LayoutInflater1.inflate(2130903219, null);

        d = View4.findViewById(2131493085);
        e = View4.findViewById(2131493181);
        f = View4.findViewById(2131493138);
        c = (ListView) View4.findViewById(2131492924);
        f.setOnClickListener((View$OnClickListener) new bU(this));
        return View4;
    }

    public void onDestroy() {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b(this);
    }

    public void onResume() {
        BookReadRecord BookReadRecord1;
        String String2;
        int int3;

        super.onResume();
        BookReadRecord1 = BookReadRecord.getOnShelf(a);
        if (BookReadRecord1 == null || BookReadRecord1.getTocId() == null)
            g.setVisibility(8);
        else {
            String String11 = BookReadRecord1.getTocId();
            TocReadRecord TocReadRecord12 = TocReadRecord.get(String11);

            if (TocReadRecord12 != null) {
                g.setVisibility(0);
                i.setText((CharSequence) TocReadRecord12.getChapterTitle());
                g.setOnClickListener((View$OnClickListener) new bX(this, String11));
            } else
                g.setVisibility(8);
        }
        String2 = a;
        label_55:
        {
            if (com.clilystudio.netbook.hpay100.a.a.d()) {
                Iterator Iterator8 = com.clilystudio.netbook.hpay100.a.a.D(String2).iterator();

                while (Iterator8.hasNext()) {
                    String String9 = (String) Iterator8.next();
                    Iterator Iterator10;

                    if (String9.contains((CharSequence) "MIX_TOC_ID") || String9.contains((CharSequence) "_"))
                        continue;
                    Iterator10 = com.clilystudio.netbook.hpay100.a.a.j(String2, String9).iterator();
                    while (Iterator10.hasNext()) {
                        if ("toc".equals((String) Iterator10.next()))
                            continue;
                        int3 = 1;
                        break label_55;
                    }
                }
            }
            int3 = 0;
        }
        if (int3 != 0) {
            int int4;
            int int5;

            h.setVisibility(0);
            int4 = com.clilystudio.netbook.hpay100.a.a.a((Context) getActivity(), 55.0F);
            int5 = com.clilystudio.netbook.hpay100.a.a.a((Context) getActivity(), 40.0F);
            if (g.getVisibility() == 0) {
                Object Object6 = new LinearLayout$LayoutParams(-1, int4);

                ((LinearLayout$LayoutParams) Object6).setMargins(0, 0, 0, 0);
                h.setLayoutParams((ViewGroup$LayoutParams) Object6);
            } else {
                Object Object7 = new LinearLayout$LayoutParams(-1, int4);

                ((LinearLayout$LayoutParams) Object7).setMargins(0, int5, 0, 0);
                h.setLayoutParams((ViewGroup$LayoutParams) Object7);
            }
        } else
            h.setVisibility(8);
        l.notifyDataSetChanged();
    }
}
