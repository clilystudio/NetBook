package com.clilystudio.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.TextView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.widget.CoverView;

import java.util.List;

public final class X extends BaseAdapter {

    UGCGuideSelectBookActivity a;     // final access specifier removed
    private LayoutInflater b;
    private List c;
    private boolean d;
    public X(UGCGuideSelectBookActivity UGCGuideSelectBookActivity1, LayoutInflater LayoutInflater2, List List3) {
        a = UGCGuideSelectBookActivity1;
        d = false;
        b = LayoutInflater2;
        c = List3;
    }

    static boolean a(X X1) {
        return X1.d;
    }

    public final int getCount() {
        return c.size();
    }

    public final Object getItem(int int1) {
        return c.get(int1);
    }

    public final long getItemId(int int1) {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        Object Object4;
        BookReadRecord BookReadRecord5;
        CheckBox CheckBox6;

        if (View2 == null) {
            Object4 = new Z(this);
            View2 = b.inflate(2130903318, null);
            ((Z) Object4).a = (TextView) View2.findViewById(2131492936);
            ((Z) Object4).b = (TextView) View2.findViewById(2131493481);
            ((Z) Object4).c = (CoverView) View2.findViewById(2131493604);
            ((Z) Object4).d = (CheckBox) View2.findViewById(2131492900);
            View2.setTag(Object4);
        } else
            Object4 = (Z) View2.getTag();
        BookReadRecord5 = (BookReadRecord) c.get(int1);
        ((Z) Object4).a.setText((CharSequence) BookReadRecord5.getTitle());
        ((Z) Object4).c.setImageUrl(BookReadRecord5.getFullCover(), 2130837766);
        ((Z) Object4).b.setText((CharSequence) BookReadRecord5.buildDesc());
        CheckBox6 = ((Z) Object4).d;
        d = true;
        if (UGCGuideSelectBookActivity.c(a).length <= int1) {
            boolean[] boolean_1darray7 = new boolean[int1 + 1];
            int int8;

            for (int8 = 0; int8 < UGCGuideSelectBookActivity.c(a).length; ++int8)
                boolean_1darray7[int8] = UGCGuideSelectBookActivity.c(a)[int8];
            UGCGuideSelectBookActivity.a(a, boolean_1darray7);
        }
        CheckBox6.setChecked(UGCGuideSelectBookActivity.c(a)[int1]);
        UGCGuideSelectBookActivity.a(a, int1);
        d = false;
        CheckBox6.setOnCheckedChangeListener((CompoundButton$OnCheckedChangeListener) new Y(this, int1));
        return View2;
    }
}
