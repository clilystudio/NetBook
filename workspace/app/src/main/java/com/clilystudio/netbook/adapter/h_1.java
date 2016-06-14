package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PostFlag;
import com.clilystudio.netbook.widget.RatingView;

public final class h extends W<BookReview> {
    private boolean a;
    private boolean b = false;

    public h(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903269);
        Context context = layoutInflater.getContext();
        this.a = am.m(context);
        this.b = a.r(context, "community_user_gender_icon_toggle");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookReview bookReview = (BookReview) object;
        Author author = bookReview.author;
        if (this.a) {
            ((SmartImageView) this.a(0, SmartImageView.class)).setImageResource(2130837614);
        } else {
            ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), 2130837614);
            ((SmartImageView) this.a(0, SmartImageView.class)).setOnClickListener(new i(this, bookReview));
        }
        this.a(1, author.getNickname());
        this.a(2, "lv." + author.getLv());
        TextView textView = (TextView) this.a(3, TextView.class);
        PostFlag postFlag = (PostFlag) this.a(4, PostFlag.class);
        if (postFlag.a(bookReview.state)) {
            textView.setVisibility(8);
            postFlag.setVisibility(0);
        } else {
            textView.setVisibility(0);
            textView.setText(t.e(bookReview.created));
            postFlag.setVisibility(8);
        }
        this.a(5, bookReview.title);
        this.a(6, bookReview.content);
        this.a(7, "" + bookReview.helpful.getYes());
        ImageView imageView = (ImageView) this.a(8, ImageView.class);
        if (this.b) {
            String string = author.getGender();
            if ("male".equals(string)) {
                imageView.setVisibility(0);
                imageView.setImageLevel(2);
            } else if ("female".equals(string)) {
                imageView.setVisibility(0);
                imageView.setImageLevel(3);
            } else {
                imageView.setVisibility(0);
                imageView.setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                imageView.setVisibility(0);
                imageView.setImageLevel(0);
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(0);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(8);
            }
        }
        ((RatingView) this.a(9, RatingView.class)).setValue(bookReview.rating);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131492899, 2131493630, 2131493631, 2131492935, 2131493632, 2131492936, 2131492905, 2131493634, 2131493629, 2131493633};
    }
}
