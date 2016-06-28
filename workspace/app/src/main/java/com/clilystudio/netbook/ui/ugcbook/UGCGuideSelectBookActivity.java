package com.clilystudio.netbook.ui.ugcbook;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.*;
import com.clilystudio.netbook.event.D;
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
    private List<BookReadRecord> h;
    private List<BookReadRecord> i;
    private boolean[] j;

    static /* synthetic */ UGCNewCollection a(UGCGuideSelectBookActivity uGCGuideSelectBookActivity) {
        return UGCGuideSelectBookActivity.e();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(UGCGuideSelectBookActivity uGCGuideSelectBookActivity, int n) {
        if (uGCGuideSelectBookActivity.j[n]) {
            if (!uGCGuideSelectBookActivity.i.contains(uGCGuideSelectBookActivity.g.getItem(n))) {
                uGCGuideSelectBookActivity.i.add((BookReadRecord) uGCGuideSelectBookActivity.g.getItem(n));
            }
        } else {
            BookReadRecord bookReadRecord = (BookReadRecord) uGCGuideSelectBookActivity.g.getItem(n);
            uGCGuideSelectBookActivity.i.remove(bookReadRecord);
            UGCNewCollection uGCNewCollection = UGCGuideSelectBookActivity.e();
            if (uGCNewCollection.getBooks() != null) {
                BookSummary bookSummary2;
                block7:
                {
                    for (BookSummary bookSummary2 : uGCNewCollection.getBooks()) {
                        if (!bookSummary2.getId().equals(bookReadRecord.getBookId())) continue;
                        break block7;
                    }
                    bookSummary2 = null;
                }
                if (bookSummary2 != null) {
                    bookSummary2.setSelected(false);
                    uGCNewCollection.getBooks().remove(bookSummary2);
                }
            }
        }
        if (uGCGuideSelectBookActivity.i.size() > 0) {
            uGCGuideSelectBookActivity.f.setText("\u9009\u597d\u4e86(" + uGCGuideSelectBookActivity.i.size() + ")");
            return;
        }
        uGCGuideSelectBookActivity.f.setText("\u9009\u597d\u4e86");
    }

    static /* synthetic */ boolean[] a(UGCGuideSelectBookActivity uGCGuideSelectBookActivity, boolean[] arrbl) {
        uGCGuideSelectBookActivity.j = arrbl;
        return arrbl;
    }

    static /* synthetic */ List b(UGCGuideSelectBookActivity uGCGuideSelectBookActivity) {
        return uGCGuideSelectBookActivity.i;
    }

    static /* synthetic */ boolean[] c(UGCGuideSelectBookActivity uGCGuideSelectBookActivity) {
        return uGCGuideSelectBookActivity.j;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(int n) {
        boolean[] arrbl = this.j;
        boolean bl = !this.j[n];
        arrbl[n] = bl;
        this.g.notifyDataSetChanged();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_ugc_shelf);
        this.b("\u4e66\u67b6\u6dfb\u52a0");
        this.h = BookReadRecord.getAllNotDeleted();
        this.a = (ListView) this.findViewById(R.id.ugc_add_shelf_list);
        this.e = (Button) this.findViewById(R.id.select_cancel);
        this.f = (Button) this.findViewById(R.id.select_ok);
        this.b = this.findViewById(R.id.empty_text);
        this.c = this.findViewById(R.id.select_bar);
        if (this.h.size() == 0) {
            this.b.setVisibility(View.VISIBLE);
            this.a.setVisibility(View.GONE);
            this.c.setVisibility(View.GONE);
            return;
        }
        this.i = new ArrayList<BookReadRecord>();
        this.j = new boolean[this.h.size()];
        UGCNewCollection uGCNewCollection = UGCGuideSelectBookActivity.e();
        if (uGCNewCollection != null && uGCNewCollection.getBooks() != null) {
            List<BookSummary> list = uGCNewCollection.getBooks();
            ArrayList<String> arrayList = new ArrayList<String>();
            Iterator<BookSummary> iterator = list.iterator();
            while (iterator.hasNext()) {
                arrayList.add(iterator.next().getId());
            }
            for (int i = 0; i < this.h.size(); ++i) {
                BookReadRecord bookReadRecord = this.h.get(i);
                if (!arrayList.contains(bookReadRecord.getBookId())) continue;
                this.i.add(bookReadRecord);
                this.j[i] = true;
            }
        }
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.g = new X(this, layoutInflater, this.h);
        this.a.setAdapter(this.g);
        this.a.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                UGCGuideSelectBookActivity.this.a(position);
            }
        });
        View view = layoutInflater.inflate(R.layout.layout_shelf_footer, (ViewGroup) this.a, false);
        this.a.addFooterView(view);
        this.e.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCNewCollection uGCNewCollection = UGCGuideSelectBookActivity.a(UGCGuideSelectBookActivity.this);
                ArrayList<String> arrayList = new ArrayList<String>();
                Iterator<BookSummary> iterator = uGCNewCollection.getBooks().iterator();
                while (iterator.hasNext()) {
                    arrayList.add(iterator.next().getId());
                }
                ArrayList<String> arrayList2 = new ArrayList<String>();
                for (int j = 0; j < UGCGuideSelectBookActivity.b(UGCGuideSelectBookActivity.this).size(); ++j) {
                    String string = ((BookReadRecord) UGCGuideSelectBookActivity.b(UGCGuideSelectBookActivity.this).get(j)).getBookId();
                    if (arrayList.contains(string)) continue;
                    arrayList2.add(string);
                }
                String[] arrstring = (String[]) com.clilystudio.netbook.hpay100.a.a.a(arrayList2, String.class);
                com.clilystudio.netbook.event.i.a().post(new D(arrstring));
                finish();
            }
        });
    }
}
