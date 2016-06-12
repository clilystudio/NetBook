package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.reader.cM;
import com.clilystudio.netbook.reader.cQ;
import com.clilystudio.netbook.util.E;
import com.clilystudio.netbook.util.F;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import butterknife.ButterKnife;

public class RelateBooksFragment extends Fragment implements cQ {

    LinearLayout mBookContainer;
    TextView mMore;
    LinearLayout mRelateBookRoot;
    private boolean a = false;

    public static RelateBooksFragment a(String String1) {
        RelateBooksFragment RelateBooksFragment2 = new RelateBooksFragment();
        Bundle Bundle3 = new Bundle();

        Bundle3.putString("book_id", String1);
        RelateBooksFragment2.setArguments(Bundle3);
        return RelateBooksFragment2;
    }

    static boolean a(RelateBooksFragment RelateBooksFragment1) {
        return RelateBooksFragment1.a;
    }

    public final void a(RelateBookRoot RelateBookRoot1, String[] String_1darray2) {
        if (getActivity() != null && RelateBookRoot1 != null && RelateBookRoot1.getBooks() != null && !RelateBookRoot1.getBooks().isEmpty()) {
            Object Object3;
            Object Object4;
            DisplayMetrics DisplayMetrics5;
            int int6;
            F F7;
            int int8;
            int int9;
            int int10;
            int int11;

            mRelateBookRoot.setVisibility(0);
            label_68:
            {
                if (a) {
                    List List16 = RelateBookRoot1.getBooks();
                    int int17;
                    int int18;

                    Object3 = new ArrayList(20);
                    int17 = String_1darray2.length;
                    for (int18 = 0; int18 < int17; ++int18) {
                        String String19 = String_1darray2[int18];
                        Iterator Iterator20 = List16.iterator();

                        while (Iterator20.hasNext()) {
                            Object Object21 = (BookSummary) Iterator20.next();

                            if (!((BookSummary) Object21).getId().equals(String19))
                                continue;
                            ((List) Object3).add(Object21);
                        }
                    }
                    if (((List) Object3).size() != 0) {
                        RelateBookRoot1.setBooks((List) Object3);
                        break label_68;
                    }
                }
                Object3 = RelateBookRoot1.getBooks();
            }
            Object4 = getActivity();
            DisplayMetrics5 = new DisplayMetrics();
            ((WindowManager) ((Context) Object4).getSystemService("window")).getDefaultDisplay().getMetrics(DisplayMetrics5);
            int6 = (int) ((float) DisplayMetrics5.widthPixels - 2.0F * getResources().getDimension(2131099905));
            F7 = new E((Context) getActivity(), (float) int6, getResources().getDimension(2131099735)).a();
            if (((List) Object3).size() > F7.b())
                int8 = 1;
            else
                int8 = 0;
            if (int8 != 0) {
                mMore.setVisibility(0);
                mMore.setOnClickListener((View$OnClickListener) new bA(this, RelateBookRoot1));
                Object3 = ((List) Object3).subList(0, F7.b());
            }
            int9 = ((List) Object3).size();
            int10 = (int) F7.a();
            for (int11 = 0; int11 < int9; ++int11) {
                BookSummary BookSummary12 = (BookSummary) ((List) Object3).get(int11);
                int int13;
                View View14;
                RelateBooksFragment$ViewHolder ViewHolder15;

                if (int11 != int9 - 1)
                    int13 = 1;
                else
                    int13 = 0;
                View14 = getLayoutInflater(null).inflate(2130903379, (ViewGroup) mBookContainer, false);
                if (int13 != 0)
                    View14.setPadding(0, 0, int10, 0);
                else
                    View14.setPadding(0, 0, 0, 0);
                ViewHolder15 = new RelateBooksFragment$ViewHolder(this, View14);
                ViewHolder15.mTitle.setText((CharSequence) BookSummary12.getTitle());
                ViewHolder15.mBook.setImageUrl(BookSummary12.getFullCoverLarge(), 2130837766);
                ViewHolder15.mContainer.setOnClickListener((View$OnClickListener) new bB(this, BookSummary12));
                mBookContainer.addView(View14);
            }
        }
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        return LayoutInflater1.inflate(2130903217, ViewGroup2, false);
    }

    public void onViewCreated(View View1, Bundle Bundle2) {
        super.onViewCreated(View1, Bundle2);
        ButterKnife.inject(this, getView());
        a = new cM((Context) getActivity(), this).a(getArguments().getString("book_id"));
    }
}
