package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.PostFlag;
import com.clilystudio.netbook.widget.RatingView;

final class R_ViewHolder {
    SmartImageView a;
    TextView b;
    TextView c;
    TextView d;
    TextView e;
    TextView f;
    TextView g;
    TextView h;
    TextView i;
    View j;
    PostFlag k;
    TextView l;
    TextView m;
    RatingView n;
    CoverView o;
    ImageView p;
    View q;

    public R_ViewHolder(G g, View view) {
        this.q = view;
        this.a = (SmartImageView) view.findViewById(R.id.avatar);
        this.b = (TextView) view.findViewById(R.id.user);
        this.c = (TextView) view.findViewById(R.id.content);
        this.d = (TextView) view.findViewById(R.id.lv);
        this.e = (TextView) view.findViewById(R.id.time);
        this.f = (TextView) view.findViewById(R.id.comment_count);
        this.g = (TextView) view.findViewById(R.id.retween_count);
        this.h = (TextView) view.findViewById(R.id.follow);
        this.i = (TextView) view.findViewById(R.id.title);
        this.j = view.findViewById(R.id.review_rating_container);
        this.k = (PostFlag) view.findViewById(R.id.post_flag);
        this.l = (TextView) view.findViewById(R.id.tv_retweet);
        this.m = (TextView) view.findViewById(R.id.book_name);
        this.n = (RatingView) view.findViewById(R.id.review_rating);
        this.o = (CoverView) view.findViewById(R.id.book_cover);
        this.p = (ImageView) view.findViewById(R.id.avatar_verify);
    }
}
