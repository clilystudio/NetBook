package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.widget.ImageView;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PostFlag;

public final class d extends W<BookHelpSummary> {
    private boolean a;
    private boolean b = false;

    public d(LayoutInflater layoutInflater) {
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
        BookHelpSummary bookHelpSummary = (BookHelpSummary) object;
        Author author = bookHelpSummary.getAuthor();
        SmartImageView smartImageView = (SmartImageView) this.a(0, SmartImageView.class);
        if (this.a) {
            smartImageView.setImageResource(2130837614);
        } else {
            smartImageView.setImageUrl(author.getScaleAvatar(), 2130837614);
            smartImageView.setOnClickListener(new e(this, smartImageView, bookHelpSummary));
        }
        this.a(1, author.getNickname());
        this.a(2, "lv." + author.getLv());
        this.a(3, t.e(bookHelpSummary.getCreated()));
        this.a(4, bookHelpSummary.getTitle());
        this.a(5, String.valueOf(bookHelpSummary.getCommentCount()));
        if (this.b) {
            String string = author.getGender();
            if ("male".equals(string)) {
                ((ImageView) this.a(6, ImageView.class)).setVisibility(0);
                ((ImageView) this.a(6, ImageView.class)).setImageLevel(2);
            } else if ("female".equals(string)) {
                ((ImageView) this.a(6, ImageView.class)).setVisibility(0);
                ((ImageView) this.a(6, ImageView.class)).setImageLevel(3);
            } else {
                ((ImageView) this.a(6, ImageView.class)).setVisibility(0);
                ((ImageView) this.a(6, ImageView.class)).setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                this.a(6, false);
                ((ImageView) this.a(6, ImageView.class)).setImageLevel(0);
            } else if ("doyen".equals(string)) {
                this.a(6, false);
                ((ImageView) this.a(6, ImageView.class)).setImageLevel(1);
            } else {
                this.a(6, true);
            }
        }
        String string = bookHelpSummary.getState();
        if (((PostFlag) this.a(7, PostFlag.class)).a(string)) {
            this.a(3, true);
            this.a(7, false);
            return;
        }
        this.a(3, false);
        this.a(7, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131492899, 2131493630, 2131493631, 2131492935, 2131492936, 2131493519, 2131493629, 2131493632};
    }
}
