package com.clilystudio.netbook.ui;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public final class aw extends BaseAdapter {

    private LayoutInflater a;
    private String[] b;
    private BookCategoryListActivity c;
    public aw(BookCategoryListActivity BookCategoryListActivity1, Context Context2, String[] String_1darray3) {
        c = BookCategoryListActivity1;
        a = LayoutInflater.from(Context2);
        b = String_1darray3;
    }

    public final int getCount() {
        return b.length;
    }

    public final Object getItem(int int1) {
        return b[int1];
    }

    public final long getItemId(int int1) {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        View View5;
        Object Object6;

        if (View2 == null) {
            Object Object4 = new ax(this);

            if (int1 == 0)
                View5 = a.inflate(2130903176, null);
            else
                View5 = a.inflate(2130903174, null);
            ((ax) Object4).a = (TextView) View5.findViewById(2131493370);
            ((ax) Object4).b = (ImageView) View5.findViewById(2131493371);
            View5.setTag(Object4);
            Object6 = Object4;
        } else {
            Object6 = (ax) View2.getTag();
            View5 = View2;
        }
        ((ax) Object6).a.setText((CharSequence) b[int1]);
        if (BookCategoryListActivity.f(c).equals(b[int1])) {
            ((ax) Object6).a.setTextColor(c.getResources().getColor(2131427485));
            ((ax) Object6).b.setVisibility(0);
        } else {
            ((ax) Object6).a.setTextColor(am.a((Context) c, 16842904));
            ((ax) Object6).b.setVisibility(8);
        }
        return View5;
    }
}
