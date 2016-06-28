package com.clilystudio.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.widget.CoverView;

import java.util.List;

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

    static /* synthetic */ boolean a(X x) {
        return x.d;
    }

    @Override
    public final int getCount() {
        return this.c.size();
    }

    @Override
    public final Object getItem(int n) {
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
            z = new Z(this);
            view = this.b.inflate(R.layout.list_item_ugc_shelf, null);
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
            for (int i = 0; i < UGCGuideSelectBookActivity.c(this.a).length; ++i) {
                arrbl[i] = UGCGuideSelectBookActivity.c(this.a)[i];
            }
            UGCGuideSelectBookActivity.a(this.a, arrbl);
        }
        checkBox.setChecked(UGCGuideSelectBookActivity.c(this.a)[position]);
        UGCGuideSelectBookActivity.a(this.a, position);
        this.d = false;
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (X.a(X.this)) {
                    return;
                }
                UGCGuideSelectBookActivity.c((UGCGuideSelectBookActivity) X.this.a)[position] = isChecked;
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

        public Z(X x) {
        }
    }
}
