package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.reader.cM;
import com.clilystudio.netbook.reader.cQ;
import com.clilystudio.netbook.util.E;

import java.util.ArrayList;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class RelateBooksFragment extends Fragment implements cQ {
    @InjectView(value = 2131493463)
    LinearLayout mBookContainer;
    @InjectView(value = 2131493432)
    TextView mMore;
    @InjectView(value = 2131493462)
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
    public final void a(RelateBookRoot var1_1, String[] var2_2) {
        if (this.getActivity() == null) {
            return;
        }
        if (var1_1 == null) return;
        if (var1_1.getBooks() == null) return;
        if (var1_1.getBooks().isEmpty() != false) return;
        this.mRelateBookRoot.setVisibility(0);
        if (!this.a)**GOTO lbl -1000
        var16_3 = var1_1.getBooks();
        var3_4 = new ArrayList<BookSummary>(20);
        for (String var19_7 : var2_2) {
            for (BookSummary var21_9 : var16_3) {
                if (!var21_9.getId().equals(var19_7)) continue;
                var3_4.add(var21_9);
            }
        }
        if (var3_4.size() != 0) {
            var1_1.setBooks(var3_4);
        } else lbl - 1000: // 2 sources:
        {
            var3_4 = var1_1.getBooks();
        }
        var4_10 = this.getActivity();
        var5_11 = new DisplayMetrics();
        ((WindowManager) var4_10.getSystemService("window")).getDefaultDisplay().getMetrics(var5_11);
        var6_12 = (int) ((float) var5_11.widthPixels - 2.0f * this.getResources().getDimension(2131099905));
        var7_13 = new E(this.getActivity(), var6_12, this.getResources().getDimension(2131099735)).a();
        var8_14 = var3_4.size() > var7_13.b();
        if (var8_14) {
            this.mMore.setVisibility(0);
            this.mMore.setOnClickListener(new bA(this, var1_1));
            var3_4 = var3_4.subList(0, var7_13.b());
        }
        var9_15 = var3_4.size();
        var10_16 = (int) var7_13.a();
        var11_17 = 0;
        while (var11_17 < var9_15) {
            var12_18 = var3_4.get(var11_17);
            var13_19 = var11_17 != var9_15 - 1;
            var14_20 = this.getLayoutInflater(null).inflate(2130903379, (ViewGroup) this.mBookContainer, false);
            if (var13_19) {
                var14_20.setPadding(0, 0, var10_16, 0);
            } else {
                var14_20.setPadding(0, 0, 0, 0);
            }
            var15_21 = new RelateBooksFragment$ViewHolder(this, var14_20);
            var15_21.mTitle.setText(var12_18.getTitle());
            var15_21.mBook.setImageUrl(var12_18.getFullCoverLarge(), 2130837766);
            var15_21.mContainer.setOnClickListener(new bB(this, var12_18));
            this.mBookContainer.addView(var14_20);
            ++var11_17;
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2130903217, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ButterKnife.inject((Object) this, this.getView());
        this.a = new cM(this.getActivity(), this).a(this.getArguments().getString("book_id"));
    }
}
