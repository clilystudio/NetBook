package com.clilystudio.app.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.BookRankRoot;
import com.clilystudio.app.netbook.model.BookRankSummary;
import com.clilystudio.app.netbook.widget.RankCollapseItem;

import java.util.List;

public final class BookRankAdapter extends u<BookRankSummary> {
    private LayoutInflater a;
    private List<BookRankSummary> b;
    private List<BookRankSummary> c;
    private List<BookRankSummary> d;
    private List<BookRankSummary> e;
    private int f;
    private int g;

    public BookRankAdapter(LayoutInflater paramLayoutInflater) {
        this.a = paramLayoutInflater;
    }

    private BookRankSummary a(int paramInt) {
        if ((b(paramInt)) && (paramInt - 1 < this.b.size()))
            return (BookRankSummary) this.b.get(paramInt - 1);
        int i = paramInt - this.f;
        if (i - 1 < this.d.size())
            return (BookRankSummary) this.d.get(i - 1);
        return null;
    }

    private boolean b(int paramInt) {
        return paramInt < this.f;
    }

    public final void a(BookRankRoot paramBookRankRoot) {
        int i = 1;
        int j;
        int i1;
        label64:
        label73:
        int k;
        label88:
        int m;
        if (paramBookRankRoot.getMale().size() > 0) {
            j = i;
            this.b = paramBookRankRoot.getMainMaleList();
            this.c = paramBookRankRoot.getSubMaleList();
            if (j == 0)
                break label158;
            int n = 1 + this.b.size();
            if (this.c.size() <= 0)
                break label152;
            i1 = i;
            this.f = (i1 + n);
            if (paramBookRankRoot.getFemale().size() <= 0)
                break label166;
            k = i;
            this.d = paramBookRankRoot.getMainFemaleList();
            this.e = paramBookRankRoot.getSubFemaleList();
            if (k == 0)
                break label177;
            m = 1 + this.d.size();
            if (this.e.size() <= 0)
                break label172;
        }
        label134:
        label152:
        label158:
        label166:
        label172:
        label177:
        for (this.g = (m + i); ; this.g = 0) {
            notifyDataSetInvalidated();
            return;
            j = 0;
            break;
            i1 = 0;
            break label64;
            this.f = 0;
            break label73;
            k = 0;
            break label88;
            i = 0;
            break label134;
        }
    }

    public final int getCount() {
        return this.f + this.g;
    }

    public final int getItemViewType(int paramInt) {
        if (b(paramInt))
            if (paramInt != 0) ;
        int i;
        do {
            return 0;
            if (paramInt < 1 + this.b.size())
                return 1;
            return 2;
            i = paramInt - this.f;
        }
        while (i == 0);
        if (i < 1 + this.d.size())
            return 1;
        return 2;
    }

    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        int i = getItemViewType(paramInt);
        if (paramView == null) ;
        View localView;
        switch (i) {
            default:
                localView = paramView;
            case 0:
            case 1:
            case 2:
        }
        while (true)
            switch (i) {
                default:
                    return localView;
                localView = this.a.inflate(2130903268, paramViewGroup, false);
                TextView localTextView = (TextView) localView;
                if (b(paramInt)) ;
                for (String str = "男生"; ; str = "女生") {
                    localTextView.setText(str);
                    break;
                }
                localView = this.a.inflate(2130903267, paramViewGroup, false);
                localView.setTag(new BookRankAdapter.ViewHolder(localView));
                continue;
                localView = this.a.inflate(2130903254, paramViewGroup, false);
                case 1:
                case 2:
            }
        BookRankSummary localBookRankSummary = a(paramInt);
        BookRankAdapter.ViewHolder localViewHolder = (BookRankAdapter.ViewHolder) localView.getTag();
        localViewHolder.cover.setImageUrl(localBookRankSummary.getFullCover(), 2130837766);
        localViewHolder.title.setText(localBookRankSummary.getTitle());
        localView.setOnClickListener(new f(this, localBookRankSummary, paramInt));
        return localView;
        RankCollapseItem localRankCollapseItem = (RankCollapseItem) localView;
        if (b(paramInt)) {
            localRankCollapseItem.a(this.c, paramInt, b(paramInt));
            return localView;
        }
        localRankCollapseItem.a(this.e, paramInt, b(paramInt));
        return localView;
    }

    public final int getViewTypeCount() {
        return 3;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.BookRankAdapter
 * JD-Core Version:    0.6.2
 */