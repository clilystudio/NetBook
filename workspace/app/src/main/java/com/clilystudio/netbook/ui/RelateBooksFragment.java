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
import com.clilystudio.netbook.reader.cQ;
import com.clilystudio.netbook.util.E;
import com.clilystudio.netbook.widget.CoverView;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.ArrayList;
import java.util.List;

public class RelateBooksFragment extends Fragment implements cQ {
    LinearLayout mBookContainer;
    TextView mMore;
    LinearLayout mRelateBookRoot;
    private boolean a = false;

    public static RelateBooksFragment a(String string) {
        RelateBooksFragment relateBooksFragment = new RelateBooksFragment();
        Bundle bundle = new Bundle();
        bundle.putString("book_id", string);
        relateBooksFragment.setArguments(bundle);
        return relateBooksFragment;
    }

    static /* synthetic */ boolean a(RelateBooksFragment relateBooksFragment) {
        return relateBooksFragment.a;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void a(final RelateBookRoot var1_1, String[] var2_2) {
        if (this.getActivity() == null) {
            return;
        }
        if (var1_1 == null) return;
        if (var1_1.getBooks() == null) return;
        if (var1_1.getBooks().isEmpty() != false) return;
        this.mRelateBookRoot.setVisibility(View.VISIBLE);
        List<BookSummary> var3_4;
        if (this.a) {
            List<BookSummary> var16_3 = var1_1.getBooks();
            var3_4 = new ArrayList<BookSummary>(20);
            for (String var19_7 : var2_2) {
                for (BookSummary var21_9 : var16_3) {
                    if (!var21_9.getId().equals(var19_7)) continue;
                    var3_4.add(var21_9);
                }
            }
            if (var3_4.size() != 0) {
                var1_1.setBooks(var3_4);
            } else {
                var3_4 = var1_1.getBooks();
            }
        } else {
            var3_4 = var1_1.getBooks();
        }
        FragmentActivity var4_10 = this.getActivity();
        DisplayMetrics var5_11 = new DisplayMetrics();
        ((WindowManager) var4_10.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(var5_11);
        int var6_12 = (int) ((float) var5_11.widthPixels - 2.0f * this.getResources().getDimension(R.dimen.relate_book_outer_padding));
        com.clilystudio.netbook.util.F var7_13 = new E(this.getActivity(), var6_12, this.getResources().getDimension(R.dimen.dp_60)).a();
        if (var3_4.size() > var7_13.b()) {
            this.mMore.setVisibility(View.VISIBLE);
            this.mMore.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = RelateBookListActivity.a(RelateBooksFragment.this.getActivity(), var1_1, "\u4f60\u53ef\u80fd\u611f\u5174\u8da3", RelateBooksFragment.a(RelateBooksFragment.this));
                    RelateBooksFragment.this.startActivity(intent);
                }
            });
            var3_4 = var3_4.subList(0, var7_13.b());
        }
        int var9_15 = var3_4.size();
        int var10_16 = (int) var7_13.a();
        for (int var11_17 = 0; var11_17 < var9_15; var11_17++) {
            final BookSummary var12_18 = var3_4.get(var11_17);
            View var14_20 = this.getLayoutInflater(null).inflate(R.layout.relate_book_item, (ViewGroup) this.mBookContainer, false);
            if (var11_17 != var9_15 - 1) {
                var14_20.setPadding(0, 0, var10_16, 0);
            } else {
                var14_20.setPadding(0, 0, 0, 0);
            }
            ViewHolder var15_21 = new ViewHolder(this, var14_20);
            var15_21.mTitle.setText(var12_18.getTitle());
            var15_21.mBook.setImageUrl(var12_18.getFullCoverLarge(), R.drawable.cover_default);
            var15_21.mContainer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int n;
                    if (RelateBooksFragment.a(RelateBooksFragment.this)) {
                        com.clilystudio.netbook.hpay100.a.a.c((Context) RelateBooksFragment.this.getActivity(), var12_18.getId(), "rec_C6613205_93B6_61A6_9FEC_180B70F91B94");
                        MiStatInterface.recordCountEvent("book_info_recommend_click", "bfd");
                        n = 3;
                    } else {
                        MiStatInterface.recordCountEvent("book_info_recommend_click", "zhuishu");
                        n = 1;
                    }
                    Intent intent = BookInfoActivity.a(RelateBooksFragment.this.getActivity(), var12_18.getId(), n);
                    RelateBooksFragment.this.startActivity(intent);
                }
            });
            this.mBookContainer.addView(var14_20);
        }
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
        this.a = new cM(this.getActivity(), this).a(this.getArguments().getString("book_id"));
    }

    public class ViewHolder {
        CoverView mBook;
        View mContainer;
        TextView mTitle;

        ViewHolder(RelateBooksFragment relateBooksFragment, View view) {
            this.mBook = (CoverView) view.findViewById(R.id.book);
            this.mTitle = (TextView) view.findViewById(R.id.title);
            this.mContainer = view.findViewById(R.id.container);
        }
    }
}
