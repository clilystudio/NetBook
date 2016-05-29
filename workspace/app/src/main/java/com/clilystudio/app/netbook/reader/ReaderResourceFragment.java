package com.clilystudio.app.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.adapter.B;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.db.TocReadRecord;
import com.squareup.a.b;

import java.util.Iterator;

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

    public static ReaderResourceFragment a(String paramString1, String paramString2) {
        ReaderResourceFragment localReaderResourceFragment = new ReaderResourceFragment();
        Bundle localBundle = new Bundle();
        localBundle.putString("BOOK_ID", paramString1);
        localBundle.putString("BOOK_TITLE", paramString2);
        localReaderResourceFragment.setArguments(localBundle);
        return localReaderResourceFragment;
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        View localView = LayoutInflater.from(getActivity()).inflate(2130903374, this.c, false);
        this.c.addHeaderView(localView, null, false);
        this.g = localView.findViewById(2131493940);
        this.i = ((TextView) localView.findViewById(2131493943));
        this.j = localView.findViewById(2131493946);
        this.k = ((TextView) localView.findViewById(2131493947));
        this.h = localView.findViewById(2131493944);
        this.h.setOnClickListener(new bW(this));
        this.l = new B(getActivity().getLayoutInflater());
        this.c.setAdapter(this.l);
        this.c.setOnItemClickListener(new bV(this));
        bY localbY = new bY(this, (byte) 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.a;
        localbY.b(arrayOfString);
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        i.a().a(this);
        this.a = getArguments().getString("BOOK_ID");
        this.b = getArguments().getString("BOOK_TITLE");
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903219, null);
        this.d = localView.findViewById(2131493085);
        this.e = localView.findViewById(2131493181);
        this.f = localView.findViewById(2131493138);
        this.c = ((ListView) localView.findViewById(2131492924));
        this.f.setOnClickListener(new bU(this));
        return localView;
    }

    public void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    public void onResume() {
        super.onResume();
        BookReadRecord localBookReadRecord = BookReadRecord.getOnShelf(this.a);
        int m;
        label138:
        int n;
        int i1;
        if ((localBookReadRecord == null) || (localBookReadRecord.getTocId() == null)) {
            this.g.setVisibility(8);
            String str1 = this.a;
            if (!a.d())
                break label292;
            Iterator localIterator1 = a.D(str1).iterator();
            Iterator localIterator2;
            do
                while (!localIterator2.hasNext()) {
                    String str2;
                    do {
                        if (!localIterator1.hasNext())
                            break;
                        str2 = (String) localIterator1.next();
                    }
                    while ((str2.contains("MIX_TOC_ID")) || (str2.contains("_")));
                    localIterator2 = a.j(str1, str2).iterator();
                }
            while ("toc".equals((String) localIterator2.next()));
            m = 1;
            if (m == 0)
                break label331;
            this.h.setVisibility(0);
            n = a.a(getActivity(), 55.0F);
            i1 = a.a(getActivity(), 40.0F);
            if (this.g.getVisibility() != 0)
                break label297;
            LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, n);
            localLayoutParams1.setMargins(0, 0, 0, 0);
            this.h.setLayoutParams(localLayoutParams1);
        }
        while (true) {
            this.l.notifyDataSetChanged();
            return;
            String str3 = localBookReadRecord.getTocId();
            TocReadRecord localTocReadRecord = TocReadRecord.get(str3);
            if (localTocReadRecord != null) {
                this.g.setVisibility(0);
                this.i.setText(localTocReadRecord.getChapterTitle());
                this.g.setOnClickListener(new bX(this, str3));
                break;
            }
            this.g.setVisibility(8);
            break;
            label292:
            m = 0;
            break label138;
            label297:
            LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, n);
            localLayoutParams2.setMargins(0, i1, 0, 0);
            this.h.setLayoutParams(localLayoutParams2);
            continue;
            label331:
            this.h.setVisibility(8);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ReaderResourceFragment
 * JD-Core Version:    0.6.2
 */