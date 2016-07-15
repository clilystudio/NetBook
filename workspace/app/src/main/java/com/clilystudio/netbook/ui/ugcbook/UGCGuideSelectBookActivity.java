package com.clilystudio.netbook.ui.ugcbook;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.AddShelfBooksEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.TempUtil;
import com.clilystudio.netbook.widget.CoverView;

import java.util.ArrayList;
import java.util.List;

public class UGCGuideSelectBookActivity extends BaseActivity {
    private Button f;
    private X g;
    private List<BookReadRecord> i;
    private boolean[] j;

    static /* synthetic */ void a(UGCGuideSelectBookActivity uGCGuideSelectBookActivity, int n) {
        if (uGCGuideSelectBookActivity.j[n]) {
            BookReadRecord item = uGCGuideSelectBookActivity.g.getItem(n);
            if (!uGCGuideSelectBookActivity.i.contains(item)) {
                uGCGuideSelectBookActivity.i.add(item);
            }
        } else {
            BookReadRecord bookReadRecord = uGCGuideSelectBookActivity.g.getItem(n);
            uGCGuideSelectBookActivity.i.remove(bookReadRecord);
            UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
            if (uGCNewCollection.getBooks() != null) {
                BookSummary bookSummary2 = null;
                for (BookSummary bookSummary21 : uGCNewCollection.getBooks()) {
                    if (bookSummary21.getId().equals(bookReadRecord.getBookId())) {
                        bookSummary2 = bookSummary21;
                        break;
                    }
                }
                if (bookSummary2 != null) {
                    bookSummary2.setSelected(false);
                    uGCNewCollection.getBooks().remove(bookSummary2);
                }
            }
        }
        if (uGCGuideSelectBookActivity.i.size() > 0) {
            String text = "选好了(" + uGCGuideSelectBookActivity.i.size() + ")";
            uGCGuideSelectBookActivity.f.setText(text);
            return;
        }
        uGCGuideSelectBookActivity.f.setText("选好了");
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
        List<BookReadRecord> h = BookReadRecord.getAllNotDeleted();
        ListView a = (ListView) this.findViewById(R.id.ugc_add_shelf_list);
        Button e = (Button) this.findViewById(R.id.select_cancel);
        this.f = (Button) this.findViewById(R.id.select_ok);
        View b = this.findViewById(R.id.empty_text);
        View c = this.findViewById(R.id.select_bar);
        if (h.size() == 0) {
            b.setVisibility(View.VISIBLE);
            a.setVisibility(View.GONE);
            c.setVisibility(View.GONE);
            return;
        }
        this.i = new ArrayList<>();
        this.j = new boolean[h.size()];
        UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
        if (uGCNewCollection != null && uGCNewCollection.getBooks() != null) {
            List<BookSummary> list = uGCNewCollection.getBooks();
            ArrayList<String> arrayList = new ArrayList<>();
            for (BookSummary aList : list) {
                arrayList.add(aList.getId());
            }
            for (int i = 0; i < h.size(); ++i) {
                BookReadRecord bookReadRecord = h.get(i);
                if (!arrayList.contains(bookReadRecord.getBookId())) continue;
                this.i.add(bookReadRecord);
                this.j[i] = true;
            }
        }
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.g = new X(this, layoutInflater, h);
        a.setAdapter(this.g);
        a.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                UGCGuideSelectBookActivity.this.a(position);
            }
        });
        View view = layoutInflater.inflate(R.layout.layout_shelf_footer, a, false);
        a.addFooterView(view);
        e.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCNewCollection uGCNewCollection = MyApplication.getInstance().getUGCNewCollection();
                ArrayList<String> arrayList = new ArrayList<>();
                for (BookSummary bookSummary : uGCNewCollection.getBooks()) {
                    arrayList.add(bookSummary.getId());
                }
                ArrayList<String> arrayList2 = new ArrayList<>();
                for (int j = 0; j < UGCGuideSelectBookActivity.this.i.size(); ++j) {
                    String string = UGCGuideSelectBookActivity.this.i.get(j).getBookId();
                    if (!arrayList.contains(string)) {
                        arrayList2.add(string);
                    }
                }
                String[] arrstring = TempUtil.a(arrayList2, String.class);
                BusProvider.getInstance().post(new AddShelfBooksEvent(arrstring));
                finish();
            }
        });
    }

    public final class X extends BaseAdapter {
        final /* synthetic */ UGCGuideSelectBookActivity a;
        private LayoutInflater b;
        private List<BookReadRecord> c;
        private boolean d;

        public X(UGCGuideSelectBookActivity uGCGuideSelectBookActivity, LayoutInflater layoutInflater, List<BookReadRecord> list) {
            this.a = uGCGuideSelectBookActivity;
            this.d = false;
            this.b = layoutInflater;
            this.c = list;
        }

        @Override
        public final int getCount() {
            return this.c.size();
        }

        @Override
        public final BookReadRecord getItem(int n) {
            return this.c.get(n);
        }

        @Override
        public final long getItemId(int n) {
            return n;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public final View getView(final int position, View view, ViewGroup viewGroup) {
            Z z;
            if (view == null) {
                z = new Z();
                view = this.b.inflate(R.layout.list_item_ugc_shelf, (ViewGroup)getWindow().getDecorView(), false);
                z.a = (TextView) view.findViewById(R.id.title);
                z.b = (TextView) view.findViewById(R.id.desc);
                z.c = (CoverView) view.findViewById(R.id.cover);
                z.d = (CheckBox) view.findViewById(R.id.checked);
                view.setTag(z);
            } else {
                z = (Z) view.getTag();
            }
            BookReadRecord bookReadRecord = this.c.get(position);
            z.a.setText(bookReadRecord.getTitle());
            z.c.setImageUrl(bookReadRecord.getFullCover(), R.drawable.cover_default);
            z.b.setText(bookReadRecord.buildDesc());
            CheckBox checkBox = z.d;
            this.d = true;
            if (UGCGuideSelectBookActivity.c(this.a).length <= position) {
                boolean[] arrbl = new boolean[position + 1];
                System.arraycopy(UGCGuideSelectBookActivity.c(this.a), 0, arrbl, 0, UGCGuideSelectBookActivity.c(this.a).length);
                UGCGuideSelectBookActivity.a(this.a, arrbl);
            }
            checkBox.setChecked(UGCGuideSelectBookActivity.c(this.a)[position]);
            UGCGuideSelectBookActivity.a(this.a, position);
            this.d = false;
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (X.this.d) {
                        return;
                    }
                    UGCGuideSelectBookActivity.c(X.this.a)[position] = isChecked;
                    UGCGuideSelectBookActivity.a(X.this.a, position);
                }
            });
            return view;
        }

        public final class Z {
            TextView a;
            TextView b;
            CoverView c;
            CheckBox d;
        }
    }
}
