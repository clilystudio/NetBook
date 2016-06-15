package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.widget.RatingView;

import butterknife.ButterKnife;

public class BestReviewsFragment extends Fragment {
    private View a;
    private LinearLayout b;
    private boolean c = false;

    static /* synthetic */ View a(BestReviewsFragment bestReviewsFragment) {
        return bestReviewsFragment.a;
    }

    public static BestReviewsFragment a(String string, String string2) {
        BestReviewsFragment bestReviewsFragment = new BestReviewsFragment();
        Bundle bundle = new Bundle();
        bundle.putString("args_book_id", string);
        bundle.putString("args_book_title", string2);
        bestReviewsFragment.setArguments(bundle);
        return bestReviewsFragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(BestReviewsFragment bestReviewsFragment, BookReview bookReview) {
        View view = bestReviewsFragment.getLayoutInflater(null).inflate(2130903269, (ViewGroup) bestReviewsFragment.b, false);
        BestReviewsFragment$ViewHolder bestReviewsFragment$ViewHolder = new BestReviewsFragment$ViewHolder(bestReviewsFragment, view);
        Author author = bookReview.author;
        bestReviewsFragment$ViewHolder.avatar.setImageUrl(author.getScaleAvatar(), 2130837614);
        bestReviewsFragment$ViewHolder.user.setText(author.getNickname());
        bestReviewsFragment$ViewHolder.lv.setText("lv." + author.getLv());
        bestReviewsFragment$ViewHolder.time.setVisibility(View.GONE);
        bestReviewsFragment$ViewHolder.title.setText(bookReview.title);
        bestReviewsFragment$ViewHolder.content.setText(bookReview.content);
        bestReviewsFragment$ViewHolder.helpfulCount.setText("" + bookReview.helpful.getYes());
        bestReviewsFragment$ViewHolder.container.setOnClickListener((View.OnClickListener) ((Object) new ag(bestReviewsFragment, bookReview)));
        if (bestReviewsFragment.c) {
            String string = author.getGender();
            if ("male".equals(string)) {
                bestReviewsFragment$ViewHolder.avatarVerify.setVisibility(View.VISIBLE);
                bestReviewsFragment$ViewHolder.avatarVerify.setImageLevel(2);
            } else if ("female".equals(string)) {
                bestReviewsFragment$ViewHolder.avatarVerify.setVisibility(View.VISIBLE);
                bestReviewsFragment$ViewHolder.avatarVerify.setImageLevel(3);
            } else {
                bestReviewsFragment$ViewHolder.avatarVerify.setVisibility(View.VISIBLE);
                bestReviewsFragment$ViewHolder.avatarVerify.setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                bestReviewsFragment$ViewHolder.avatarVerify.setVisibility(View.VISIBLE);
                bestReviewsFragment$ViewHolder.avatarVerify.setImageLevel(0);
            } else if ("doyen".equals(string)) {
                bestReviewsFragment$ViewHolder.avatarVerify.setVisibility(View.VISIBLE);
                bestReviewsFragment$ViewHolder.avatarVerify.setImageLevel(1);
            } else {
                bestReviewsFragment$ViewHolder.avatarVerify.setVisibility(View.GONE);
            }
        }
        bestReviewsFragment$ViewHolder.rating.setValue(bookReview.rating);
        bestReviewsFragment.b.addView(view);
    }

    static /* synthetic */ void b(BestReviewsFragment bestReviewsFragment) {
        bestReviewsFragment.a.findViewById(2131493434).setOnClickListener(new af(bestReviewsFragment));
    }

    static /* synthetic */ void c(BestReviewsFragment bestReviewsFragment) {
        bestReviewsFragment.a.findViewById(2131493432).setOnClickListener(new ae(bestReviewsFragment));
    }

    static /* synthetic */ void d(BestReviewsFragment bestReviewsFragment) {
        View view = bestReviewsFragment.getLayoutInflater(null).inflate(2130903234, (ViewGroup) bestReviewsFragment.b, false);
        bestReviewsFragment.b.addView(view);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ah ah2 = new ah(this, 0);
        Object[] arrobject = new String[]{this.getArguments().getString("args_book_id")};
        ah2.b(arrobject);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.a = layoutInflater.inflate(2130903208, viewGroup, false);
        ButterKnife.inject((Object) this, this.a);
        this.b = (LinearLayout) this.a.findViewById(2131493435);
        this.c = a.r(this.a.getContext(), "community_user_gender_icon_toggle");
        return this.a;
    }
    public class BestReviewsFragment$ViewHolder {
        SmartImageView avatar;
        ImageView avatarVerify;
        View container;
        TextView content;
        TextView helpfulCount;
        TextView lv;
        RatingView rating;
        TextView time;
        TextView title;
        TextView user;

        BestReviewsFragment$ViewHolder(BestReviewsFragment bestReviewsFragment, View view) {
            this.avatar = (SmartImageView) view.findViewById(2131492899);
            this.user = (TextView) view. findViewById(2131493630);
            this.lv = (TextView)  view.findViewById(2131493631);
            this.time = (TextView)  view.findViewById(2131492935);
            this.title = (TextView)  view.findViewById(2131492936);
            this.content = (TextView)  view.findViewById(2131492905);
            this.helpfulCount = (TextView)  view.findViewById(2131493634);
            this.avatarVerify = (ImageView) view. findViewById(2131493629);
            this.rating = (RatingView)  view.findViewById(2131493633);
            this.container =  view.findViewById(2131493628);
        }
    }}
