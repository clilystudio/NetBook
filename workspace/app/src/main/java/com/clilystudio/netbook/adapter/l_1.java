package com.clilystudio.netbook.adapter;

import android.content.Context;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PostFlag;

public final class l extends W<DiscussSummary> {
    private boolean a;
    private boolean b = false;

    public l(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903295);
        Context context = layoutInflater.getContext();
        this.a = am.m(context);
        this.b = a.r(context, "community_user_gender_icon_toggle");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        DiscussSummary discussSummary = (DiscussSummary) object;
        Author author = discussSummary.getAuthor();
        if (this.a) {
            ((ImageView) this.a(0, ImageView.class)).setImageResource(2130837614);
        } else {
            ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(author.getScaleAvatar(), 2130837614);
        }
        ((View) this.a(0, ImageView.class)).setOnClickListener(new m(this, discussSummary));
        this.a(1, author.getNickname());
        this.a(2, "lv." + author.getLv());
        this.a(4, discussSummary.getTitle());
        TextView textView = (TextView) this.a(5, TextView.class);
        if ("vote".equals(discussSummary.getType())) {
            textView.setText(String.valueOf(discussSummary.getVoteCount()));
            textView.setCompoundDrawablesWithIntrinsicBounds(2130837971, 0, 0, 0);
        } else {
            textView.setText(String.valueOf(discussSummary.getCommentCount()));
            textView.setCompoundDrawablesWithIntrinsicBounds(2130837902, 0, 0, 0);
        }
        TextView textView2 = (TextView) this.a(6, TextView.class);
        textView2.setVisibility(View.VISIBLE);
        textView2.setText(String.valueOf(discussSummary.likeCount));
        String string = discussSummary.getState();
        PostFlag postFlag = (PostFlag) this.a(8, PostFlag.class);
        if (PostFlag.b(string)) {
            postFlag.setVisibility(View.VISIBLE);
            postFlag.a(string);
            this.a(3, true);
        } else {
            postFlag.setVisibility(View.GONE);
            this.a(3, false);
            this.a(3, t.e(discussSummary.getCreated()));
        }
        ImageView imageView = (ImageView) this.a(7, ImageView.class);
        if (this.b) {
            String string2 = author.getGender();
            if ("male".equals(string2)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(2);
                return;
            }
            if ("female".equals(string2)) {
                imageView.setVisibility(View.VISIBLE);
                imageView.setImageLevel(3);
                return;
            }
            imageView.setVisibility(View.VISIBLE);
            imageView.setImageLevel(4);
            return;
        }
        String string3 = author.getType();
        if ("official".equals(string3)) {
            imageView.setVisibility(View.VISIBLE);
            imageView.setImageLevel(0);
            return;
        }
        if ("doyen".equals(string3)) {
            imageView.setVisibility(View.VISIBLE);
            imageView.setImageLevel(1);
            return;
        }
        imageView.setVisibility(View.GONE);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131492899, 2131493630, 2131493631, 2131492935, 2131492936, 2131493519, 2131493727, 2131493629, 2131493632};
    }
}
