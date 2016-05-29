package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.util.W;

import java.util.List;

public final class y extends W<BookSummary> {
    private final List<BookSummary> b;

    public y(UGCGuideAddBookActivity paramUGCGuideAddBookActivity, LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903411);
        this.b = UGCGuideAddBookActivity.b(paramUGCGuideAddBookActivity).getBooks();
    }

    protected final int[] a() {
        return new int[]{2131493616, 2131493605, 2131493617, 2131493753, 2131494021, 2131494022};
    }

    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        View localView = super.getView(paramInt, paramView, paramViewGroup);
        ((Button) localView.findViewById(2131494021)).setOnClickListener(new z(this, paramInt));
        a(paramInt, localView, getItem(paramInt));
        return localView;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.y
 * JD-Core Version:    0.6.2
 */