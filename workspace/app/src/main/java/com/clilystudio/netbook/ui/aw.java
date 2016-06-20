package com.clilystudio.netbook.ui;

import android.content.Context;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public final class aw extends BaseAdapter {
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
            view2 = n == 0 ? this.a.inflate(R.layout.category_major_list_item, null) : this.a.inflate(R.layout.category_level_list_item, null);
            ax3.a = (TextView) view2.findViewById(R.id.category_name);
            ax3.b = (ImageView) view2.findViewById(R.id.category_selected);
            view2.setTag(ax3);
            ax2 = ax3;
        } else {
            ax2 = (ax) view.getTag();
            view2 = view;
        }
        ax2.a.setText(this.b[n]);
        if (BookCategoryListActivity.f(this.c).equals(this.b[n])) {
            ax2.a.setTextColor(this.c.getResources().getColor(R.color.primary_red));
            ax2.b.setVisibility(View.VISIBLE);
            return view2;
        }
        ax2.a.setTextColor(am.a((Context) this.c, 16842904));
        ax2.b.setVisibility(View.GONE);
        return view2;
    }
}
