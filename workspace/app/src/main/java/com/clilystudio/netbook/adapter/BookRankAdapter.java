package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookRankSummary;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.RankCollapseItem;

import java.util.List;

public final class BookRankAdapter extends u<BookRankSummary> {
    private LayoutInflater a;
    private List<BookRankSummary> b;
    private List<BookRankSummary> c;
    private List<BookRankSummary> d;
    private List<BookRankSummary> e;
    private int f;
    private int g;

    public BookRankAdapter(LayoutInflater layoutInflater) {
        this.a = layoutInflater;
    }

    static /* synthetic */ boolean a(BookRankAdapter bookRankAdapter, int n) {
        return bookRankAdapter.b(n);
    }

    private BookRankSummary a(int n) {
        if (this.b(n) && n - 1 < this.b.size()) {
            return this.b.get(n - 1);
        }
        int n2 = n - this.f;
        if (n2 - 1 < this.d.size()) {
            return this.d.get(n2 - 1);
        }
        return null;
    }

    private boolean b(int n) {
        return n < this.f;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(BookRankRoot bookRankRoot) {
        int n = 1;
        int n2 = bookRankRoot.getMale().size() > 0 ? n : 0;
        this.b = bookRankRoot.getMainMaleList();
        this.c = bookRankRoot.getSubMaleList();
        if (n2 != 0) {
            int n3 = 1 + this.b.size();
            int n4 = this.c.size() > 0 ? n : 0;
            this.f = n4 + n3;
        } else {
            this.f = 0;
        }
        int n5 = bookRankRoot.getFemale().size() > 0 ? n : 0;
        this.d = bookRankRoot.getMainFemaleList();
        this.e = bookRankRoot.getSubFemaleList();
        if (n5 != 0) {
            int n6 = 1 + this.d.size();
            if (this.e.size() <= 0) {
                n = 0;
            }
            this.g = n6 + n;
        } else {
            this.g = 0;
        }
        this.notifyDataSetInvalidated();
    }

    @Override
    public final int getCount() {
        return this.f + this.g;
    }

    @Override
    public final /* synthetic */ BookRankSummary getItem(int n) {
        return this.a(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final int getItemViewType(int n) {
        if (this.b(n)) {
            if (n == 0) return 0;
            {
                if (n >= 1 + this.b.size()) return 2;
                return 1;
            }
        }
        int n2 = n - this.f;
        if (n2 == 0) {
            return 0;
        }
        if (n2 >= 1 + this.d.size()) return 2;
        return 1;
    }

    public final View getView(final int paramInt, View paramView, ViewGroup paramViewGroup) {
        int i = getItemViewType(paramInt);
        View localView = null;
        if (paramView == null) {
            switch (i) {
                case 0:
                    localView = this.a.inflate(R.layout.list_item_book_rank_label, paramViewGroup, false);
                    TextView localTextView = (TextView) localView;
                    String str = "男生";
                    if (b(paramInt)) {
                        str = "女生";
                    }
                    localTextView.setText(str);
                    break;
                case 1:
                    localView = this.a.inflate(R.layout.list_item_book_rank, paramViewGroup, false);
                    localView.setTag(new BookRankAdapter.ViewHolder(localView));
                    final BookRankSummary localBookRankSummary = a(paramInt);
                    BookRankAdapter.ViewHolder localViewHolder = (BookRankAdapter.ViewHolder) localView.getTag();
                    if (localBookRankSummary != null) {
                        localViewHolder.cover.setImageUrl(localBookRankSummary.getFullCover(), R.drawable.cover_default);
                        localViewHolder.title.setText(localBookRankSummary.getTitle());
                    }
                    localView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            com.clilystudio.netbook.event.i.a().post(new x(localBookRankSummary, BookRankAdapter.a(BookRankAdapter.this, paramInt)));
                        }
                    });
                    break;
                case 2:
                    localView = this.a.inflate(R.layout.layout_rank_collapse_item, paramViewGroup, false);
                    RankCollapseItem localRankCollapseItem = (RankCollapseItem) localView;
                    if (b(paramInt)) {
                        localRankCollapseItem.a(this.c, paramInt, b(paramInt));
                    } else {
                        localRankCollapseItem.a(this.e, paramInt, b(paramInt));
                    }
                    break;
                default:
                    localView = null;
            }
        }
        return localView;
    }

    @Override
    public final int getViewTypeCount() {
        return 3;
    }

    class ViewHolder {
        SmartImageView cover;
        TextView title;

        ViewHolder(View view) {
            this.cover = (SmartImageView) view.findViewById(R.id.list_item_book_rank_cover);
            this.title = (TextView) view.findViewById(R.id.list_item_book_rank_title);
        }
    }

}
