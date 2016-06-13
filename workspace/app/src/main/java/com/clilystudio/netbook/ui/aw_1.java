package com.clilystudio.netbook.ui;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public final class aw
        extends BaseAdapter {
    private LayoutInflater a;
    private String[] b;
    private /* synthetic */ BookCategoryListActivity c;

    public aw(BookCategoryListActivity bookCategoryListActivity, Context context, String[] arrstring) {
        this.c = bookCategoryListActivity;
        this.a = LayoutInflater.from(context);
        this.b = arrstring;
    }

    @Override
    public final int getCount() {
        return this.b.length;
    }

    @Override
    public final Object getItem(int n) {
        return this.b[n];
    }

    @Override
    public final long getItemId(int n) {
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        ax ax2;
        View view2;
        if (view == null) {
            ax ax3 = new ax(this);
            view2 = n == 0 ? this.a.inflate(2130903176, null) : this.a.inflate(2130903174, null);
            ax3.a = (TextView) view2.findViewById(2131493370);
            ax3.b = (ImageView) view2.findViewById(2131493371);
            view2.setTag(ax3);
            ax2 = ax3;
        } else {
            ax2 = (ax) view.getTag();
            view2 = view;
        }
        ax2.a.setText(this.b[n]);
        if (BookCategoryListActivity.f(this.c).equals(this.b[n])) {
            ax2.a.setTextColor(this.c.getResources().getColor(2131427485));
            ax2.b.setVisibility(0);
            return view2;
        }
        ax2.a.setTextColor(am.a((Context) this.c, 16842904));
        ax2.b.setVisibility(8);
        return view2;
    }
}
