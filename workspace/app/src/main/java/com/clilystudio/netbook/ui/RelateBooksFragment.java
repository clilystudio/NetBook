package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.reader.cM;
import com.clilystudio.netbook.util.F;
import com.clilystudio.netbook.widget.CoverView;

import java.util.List;

public class RelateBooksFragment extends Fragment implements cM.cQ {
    LinearLayout mBookContainer;
    TextView mMore;
    LinearLayout mRelateBookRoot;

    public static RelateBooksFragment a(String string) {
        RelateBooksFragment relateBooksFragment = new RelateBooksFragment();
        Bundle bundle = new Bundle();
        bundle.putString("book_id", string);
        relateBooksFragment.setArguments(bundle);
        return relateBooksFragment;
    }

    @Override
    public final void a(final RelateBookRoot var1_1, String[] var2_2) {
        if (this.getActivity() == null) {
            return;
        }
        if (var1_1 == null) return;
        if (var1_1.getBooks() == null) return;
        if (var1_1.getBooks().isEmpty()) return;
        this.mRelateBookRoot.setVisibility(View.VISIBLE);
        List<BookSummary> var3_4 = var1_1.getBooks();
        FragmentActivity var4_10 = this.getActivity();
        DisplayMetrics var5_11 = new DisplayMetrics();
        ((WindowManager) var4_10.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(var5_11);
        int var6_12 = (int) ((float) var5_11.widthPixels - 2.0f * this.getResources().getDimension(R.dimen.relate_book_outer_padding));
        com.clilystudio.netbook.util.F var7_13 = getF(var6_12, this.getResources().getDimension(R.dimen.dp_60));
        if (var3_4.size() > var7_13.b()) {
            this.mMore.setVisibility(View.VISIBLE);
            this.mMore.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = RelateBookListActivity.a(RelateBooksFragment.this.getActivity(), var1_1, "你可能感兴趣", false);
                    RelateBooksFragment.this.startActivity(intent);
                }
            });
            var3_4 = var3_4.subList(0, var7_13.b());
        }
        int var9_15 = var3_4.size();
        int var10_16 = (int) var7_13.a();
        for (int var11_17 = 0; var11_17 < var9_15; var11_17++) {
            final BookSummary var12_18 = var3_4.get(var11_17);
            View var14_20 = this.getLayoutInflater(null).inflate(R.layout.relate_book_item, this.mBookContainer, false);
            if (var11_17 != var9_15 - 1) {
                var14_20.setPadding(0, 0, var10_16, 0);
            } else {
                var14_20.setPadding(0, 0, 0, 0);
            }
            ViewHolder var15_21 = new ViewHolder(var14_20);
            var15_21.mTitle.setText(var12_18.getTitle());
            var15_21.mBook.setImageUrl(var12_18.getFullCoverLarge(), R.drawable.cover_default);
            var15_21.mContainer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int n = 1;
                    Intent intent = BookInfoActivity.a(RelateBooksFragment.this.getActivity(), var12_18.getId(), n);
                    RelateBooksFragment.this.startActivity(intent);
                }
            });
            this.mBookContainer.addView(var14_20);
        }
    }

    private com.clilystudio.netbook.util.F getF(float arg1, float arg2) {
        float f = arg1 - arg2;
        float fc = getActivity().getResources().getDimension(R.dimen.relate_book_min_gap);
        for (int i = (int) (f / (arg2 + fc)); i > 0; --i) {
            float f2 = f / (float) i - arg2;
            if (f2 >= fc) {
                return new F(i + 1, f2);
            }
        }
        return new F(1, 0.0f);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_relate_books, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mBookContainer = (LinearLayout) this.getView().findViewById(R.id.books);
        this.mRelateBookRoot = (LinearLayout) this.getView().findViewById(R.id.relate_book_root);
        this.mMore = (TextView) this.getView().findViewById(R.id.more);
        new cM(this).a(this.getArguments().getString("book_id"));
    }

    public class ViewHolder {
        CoverView mBook;
        View mContainer;
        TextView mTitle;

        ViewHolder(View view) {
            this.mBook = (CoverView) view.findViewById(R.id.book);
            this.mTitle = (TextView) view.findViewById(R.id.title);
            this.mContainer = view.findViewById(R.id.container);
        }
    }
}
