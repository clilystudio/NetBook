package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
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
        super(layoutInflater, R.layout.list_item_book_review);
        Context context = layoutInflater.getContext();
        this.a = am.m(context);
        this.b = com.clilystudio.netbook.hpay100.a.a.r(context, "community_user_gender_icon_toggle");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, final BookReview bookReview) {
        final Author author = bookReview.author;
        if (this.a) {
            ((SmartImageView) this.a(0, SmartImageView.class)).setImageResource(R.drawable.avatar_default);
        } else {
            ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
            ((SmartImageView) this.a(0, SmartImageView.class)).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    v.getContext().startActivity(com.clilystudio.netbook.util.e.a(v.getContext(), bookReview.author));
                }
            });
        }
        this.a(1, author.getNickname());
        this.a(2, "lv." + author.getLv());
        TextView textView = (TextView) this.a(3, TextView.class);
        PostFlag postFlag = (PostFlag) this.a(4, PostFlag.class);
        if (postFlag.a(bookReview.state)) {
            textView.setVisibility(View.GONE);
            postFlag.setVisibility(View.VISIBLE);
        } else {
            textView.setVisibility(View.VISIBLE);
            textView.setText(t.e(bookReview.created));
            postFlag.setVisibility(View.GONE);
        }
        this.a(5, bookReview.title);
        this.a(6, bookReview.content);
        this.a(7, "" + bookReview.helpful.getYes());
        ImageView imageView = (ImageView) this.a(8, ImageView.class);
        if (this.b) {
            String string = author.getGender();
            if ("male".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(2);
            } else if ("female".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(3);
            } else {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(0);
            } else if ("doyen".equals(string)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(1);
            } else {
                imageView.setVisibility(View.GONE);
            }
        }
        ((RatingView) this.a(9, RatingView.class)).setValue(bookReview.rating);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.avatar, R.id.user, R.id.lv, R.id.time, R.id.post_flag, R.id.title, R.id.content, R.id.helpful_count, R.id.avatar_verify, R.id.rating};
    }
}