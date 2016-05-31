package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.widget.CoverView;

import java.util.List;

public final class X extends BaseAdapter {
    private LayoutInflater b;
    private List<BookReadRecord> c;
    private boolean d = false;

    public X(LayoutInflater paramLayoutInflater, List<BookReadRecord> paramList) {
        this.b = paramList;
        Object localObject;
        this.c = localObject;
    }

    public final int getCount() {
        return this.c.size();
    }

    public final Object getItem(int paramInt) {
        return this.c.get(paramInt);
    }

    public final long getItemId(int paramInt) {
        return paramInt;
    }

    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        Z localZ;
        if (paramView == null) {
            localZ = new Z(this);
            paramView = this.b.inflate(2130903318, null);
            localZ.a = ((TextView) paramView.findViewById(R.id.title));
            localZ.b = ((TextView) paramView.findViewById(2131493481));
            localZ.c = ((CoverView) paramView.findViewById(2131493604));
            localZ.d = ((CheckBox) paramView.findViewById(2131492900));
            paramView.setTag(localZ);
        }
        CheckBox localCheckBox;
        boolean[] arrayOfBoolean;
        while (true) {
            BookReadRecord localBookReadRecord = (BookReadRecord) this.c.get(paramInt);
            localZ.a.setText(localBookReadRecord.getTitle());
            localZ.c.setImageUrl(localBookReadRecord.getFullCover(), 2130837766);
            localZ.b.setText(localBookReadRecord.buildDesc());
            localCheckBox = localZ.d;
            this.d = true;
            if (UGCGuideSelectBookActivity.c_initContentView(this.a).length > paramInt)
                break label233;
            arrayOfBoolean = new boolean[paramInt + 1];
            for (int i = 0; i < UGCGuideSelectBookActivity.c_initContentView(this.a).length; i++)
                arrayOfBoolean[i] = UGCGuideSelectBookActivity.c_initContentView(this.a)[i];
            localZ = (Z) paramView.getTag();
        }
        UGCGuideSelectBookActivity.a(this.a, arrayOfBoolean);
        label233:
        localCheckBox.setChecked(UGCGuideSelectBookActivity.c_initContentView(this.a)[paramInt]);
        UGCGuideSelectBookActivity.a(this.a, paramInt);
        this.d = false;
        localCheckBox.setOnCheckedChangeListener(new Y(this, paramInt));
        return paramView;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.X
 * JD-Core Version:    0.6.2
 */