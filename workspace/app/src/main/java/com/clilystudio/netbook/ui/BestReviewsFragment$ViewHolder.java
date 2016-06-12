
package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.widget.RatingView;

public class BestReviewsFragment$ViewHolder {

    BestReviewsFragment$ViewHolder(BestReviewsFragment BestReviewsFragment1, View View2)
    {
        ButterKnife.inject( this, View2 );
    }

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
}
