package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.widget.RatingView;

import butterknife.ButterKnife;

public class BestReviewsFragment extends Fragment {
    private View a;
    private LinearLayout b;
    private boolean c = false;

    public static BestReviewsFragment a(String paramString1, String paramString2) {
        BestReviewsFragment localBestReviewsFragment = new BestReviewsFragment();
        Bundle localBundle = new Bundle();
        localBundle.putString("args_book_id", paramString1);
        localBundle.putString("args_book_title", paramString2);
        localBestReviewsFragment.setArguments(localBundle);
        return localBestReviewsFragment;
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        ah localah = new ah(this, 0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = getArguments().getString("args_book_id");
        localah.b(arrayOfString);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        this.a = paramLayoutInflater.inflate(2130903208, paramViewGroup, false);
        ButterKnife.inject(this, this.a);
        this.b = ((LinearLayout) this.a.findViewById(2131493435));
        this.c = a.r(this.a.getContext(), "community_user_gender_icon_toggle");
        return this.a;
    }

    public class ViewHolder {
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

        ViewHolder(BestReviewsFragment paramBestReviewsFragment, View paramView) {
            avatar = (SmartImageView) paramView.findViewById(R.id.avatar);
            avatarVerify = (ImageView) paramView.findViewById(R.id.avatar_verify);
            container = paramView.findViewById(R.id.list_item_book_review_container);
            content = (TextView) paramView.findViewById(R.id.content);
            helpfulCount = (TextView) paramView.findViewById(R.id.helpful_count);
            lv = (TextView) paramView.findViewById(R.id.lv);
            rating = (RatingView) paramView.findViewById(R.id.rating);
            time = (TextView) paramView.findViewById(R.id.time);
            title = (TextView) paramView.findViewById(R.id.title);
            user = (TextView) paramView.findViewById(R.id.user);
        }
    }
}

