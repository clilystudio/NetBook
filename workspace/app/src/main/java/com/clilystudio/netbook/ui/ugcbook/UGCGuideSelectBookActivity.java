package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UGCGuideSelectBookActivity extends BaseActivity {

    private ListView a;
    private View b;
    private View c;
    private Button e;
    private Button f;
    private X g;
    private List h;
    private List i;
    private boolean[] j;

    static UGCNewCollection a(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1) {
        return e();
    }

    static void a(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1, int int2) {
        if (UGCGuideSelectBookActivity1.j[int2]) {
            if (!UGCGuideSelectBookActivity1.i.contains(UGCGuideSelectBookActivity1.g.getItem(int2)))
                UGCGuideSelectBookActivity1.i.add((BookReadRecord) UGCGuideSelectBookActivity1.g.getItem(int2));
        } else {
            Object Object3 = (BookReadRecord) UGCGuideSelectBookActivity1.g.getItem(int2);
            UGCNewCollection UGCNewCollection5;

            UGCGuideSelectBookActivity1.i.remove(Object3);
            UGCNewCollection5 = e();
            if (UGCNewCollection5.getBooks() != null) {
                Iterator Iterator6 = UGCNewCollection5.getBooks().iterator();
                Object Object7;

                label_74:
                {
                    while (Iterator6.hasNext()) {
                        Object7 = (BookSummary) Iterator6.next();
                        if (!((BookSummary) Object7).getId().equals(((BookReadRecord) Object3).getBookId()))
                            continue;
                        else
                            break label_74;
                    }
                    Object7 = null;
                }
                if (Object7 != null) {
                    ((BookSummary) Object7).setSelected(false);
                    UGCNewCollection5.getBooks().remove(Object7);
                }
            }
        }
        if (UGCGuideSelectBookActivity1.i.size() > 0)
            UGCGuideSelectBookActivity1.f.setText((CharSequence) new StringBuilder("\u9009\u597D\u4E86(").append(UGCGuideSelectBookActivity1.i.size()).append(")").toString());
        else
            UGCGuideSelectBookActivity1.f.setText((CharSequence) "\u9009\u597D\u4E86");
    }

    static boolean[] a(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1, boolean[] boolean_1darray2) {
        UGCGuideSelectBookActivity1.j = boolean_1darray2;
        return boolean_1darray2;
    }

    static List b(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1) {
        return UGCGuideSelectBookActivity1.i;
    }

    static boolean[] c(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1) {
        return UGCGuideSelectBookActivity1.j;
    }

    public final void a(int int1) {
        boolean[] boolean_1darray2 = j;
        byte byte3;

        if (!j[int1])
            byte3 = (byte) 1;
        else
            byte3 = (byte) 0;
        boolean_1darray2[int1] = byte3;
        g.notifyDataSetChanged();
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903137);
        b("\u4E66\u67B6\u6DFB\u52A0");
        h = BookReadRecord.getAllNotDeleted();
        a = (ListView) findViewById(2131493226);
        e = (Button) findViewById(2131493228);
        f = (Button) findViewById(2131493229);
        b = findViewById(2131493100);
        c = findViewById(2131493227);
        if (h.size() == 0) {
            b.setVisibility(0);
            a.setVisibility(8);
            c.setVisibility(8);
        } else {
            UGCNewCollection UGCNewCollection2;
            LayoutInflater LayoutInflater3;
            View View4;

            i = (List) new ArrayList();
            j = new boolean[h.size()];
            UGCNewCollection2 = e();
            if (UGCNewCollection2 != null && UGCNewCollection2.getBooks() != null) {
                List List5 = UGCNewCollection2.getBooks();
                Object Object6 = new ArrayList();
                Iterator Iterator7 = List5.iterator();
                int int8;

                while (Iterator7.hasNext())
                    ((List) Object6).add(((BookSummary) Iterator7.next()).getId());
                for (int8 = 0; int8 < h.size(); ++int8) {
                    Object Object9 = (BookReadRecord) h.get(int8);

                    if (((List) Object6).contains(((BookReadRecord) Object9).getBookId())) {
                        i.add(Object9);
                        j[int8] = true;
                    }
                }
            }
            LayoutInflater3 = LayoutInflater.from((Context) this);
            g = new X(this, LayoutInflater3, h);
            a.setAdapter((ListAdapter) g);
            a.setOnItemClickListener((AdapterView$OnItemClickListener) new U(this));
            View4 = LayoutInflater3.inflate(2130903256, (ViewGroup) a, false);
            a.addFooterView(View4);
            e.setOnClickListener((View$OnClickListener) new V(this));
            f.setOnClickListener((View$OnClickListener) new W(this));
        }
    }
}
