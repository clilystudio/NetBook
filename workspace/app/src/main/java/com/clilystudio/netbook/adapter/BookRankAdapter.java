package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookRankSummary;
import com.clilystudio.netbook.widget.RankCollapseItem;

import java.util.List;

public final class BookRankAdapter extends u {

    private LayoutInflater a;
    private List b;
    private List c;
    private List d;
    private List e;
    private int f;
    private int g;
    public BookRankAdapter(LayoutInflater LayoutInflater1) {
        a = LayoutInflater1;
    }

    static boolean a(BookRankAdapter BookRankAdapter1, int int2) {
        return BookRankAdapter1.b(int2);
    }

    private BookRankSummary a(int int1) {
        if (b(int1) && int1 - 1 < b.size())
            return (BookRankSummary) b.get(int1 - 1);
        else {
            int int2 = int1 - f;

            if (int2 - 1 < d.size())
                return (BookRankSummary) d.get(int2 - 1);
            else
                return null;
        }
    }

    private boolean b(int int1) {
        if (int1 < f)
            return true;
        else
            return false;
    }

    public final void a(BookRankRoot BookRankRoot1) {
        int int2 = 1;
        int int3;
        int int4;

        if (BookRankRoot1.getMale().size() > 0)
            int3 = int2;
        else
            int3 = 0;
        b = BookRankRoot1.getMainMaleList();
        c = BookRankRoot1.getSubMaleList();
        if (int3 != 0) {
            int int6 = 1 + b.size();
            int int7;

            if (c.size() > 0)
                int7 = int2;
            else
                int7 = 0;
            f = int7 + int6;
        } else
            f = 0;
        if (BookRankRoot1.getFemale().size() > 0)
            int4 = int2;
        else
            int4 = 0;
        d = BookRankRoot1.getMainFemaleList();
        e = BookRankRoot1.getSubFemaleList();
        if (int4 != 0) {
            int int5 = 1 + d.size();

            if (e.size() <= 0)
                int2 = 0;
            g = int5 + int2;
        } else
            g = 0;
        notifyDataSetInvalidated();
    }

    public final int getCount() {
        return f + g;
    }

    public final Object getItem(int int1) {
        return a(int1);
    }

    public final int getItemViewType(int int1) {
        if (b(int1)) {
            if (int1 != 0) {
                if (int1 < 1 + b.size())
                    return 1;
                else
                    return 2;
            }
        } else {
            int int2 = int1 - f;

            if (int2 != 0) {
                if (int2 < 1 + d.size())
                    return 1;
                else
                    return 2;
            }
        }
        return 0;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        int int4 = getItemViewType(int1);
        View View5;

        label_10:
        {
            if (View2 == null) {
                switch (int4) {
                    default:
                        break;
                    case 0:
                        TextView TextView9;
                        Object Object10;

                        View5 = a.inflate(2130903268, ViewGroup3, false);
                        TextView9 = (TextView) View5;
                        if (b(int1))
                            Object10 = "\u7537\u751F";
                        else
                            Object10 = "\u5973\u751F";
                        TextView9.setText((CharSequence) Object10);
                        break label_10;
                    case 1:
                        View5 = a.inflate(2130903267, ViewGroup3, false);
                        View5.setTag(new BookRankAdapter$ViewHolder(View5));
                        break label_10;
                    case 2:
                        View5 = a.inflate(2130903254, ViewGroup3, false);
                        break label_10;
                }
            }
            View5 = View2;
        }
        switch (int4) {
            default:
                return View5;
            case 1:
                BookRankSummary BookRankSummary7 = a(int1);
                BookRankAdapter$ViewHolder ViewHolder8 = (BookRankAdapter$ViewHolder) View5.getTag();

                ViewHolder8.cover.setImageUrl(BookRankSummary7.getFullCover(), 2130837766);
                ViewHolder8.title.setText((CharSequence) BookRankSummary7.getTitle());
                View5.setOnClickListener((View$OnClickListener) new f(this, BookRankSummary7, int1));
                return View5;
            case 2:
                RankCollapseItem RankCollapseItem6 = (RankCollapseItem) View5;

                if (b(int1))
                    RankCollapseItem6.a(c, int1, b(int1));
                else
                    RankCollapseItem6.a(e, int1, b(int1));
                return View5;
        }
    }

    public final int getViewTypeCount() {
        return 3;
    }
}
