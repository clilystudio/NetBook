
package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.ReviewHelpful;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.PostFlag;
import com.clilystudio.netbook.widget.RatingView;
import java.util.Date;

public final class h extends W {

    public h(LayoutInflater LayoutInflater1)
    {
        super( LayoutInflater1, 2130903269 );
        Context Context2;

        Context2 = LayoutInflater1.getContext();
        a = am.m( Context2 );
        b = com.clilystudio.netbook.hpay100.a.a.r( Context2, "community_user_gender_icon_toggle" );
    }

    private boolean a;
    private boolean b = false;
// Error: Internal #201: 
// The following method may not be correct.

    protected final void a(int int1, Object Object2)
    {
    }

    protected final int[] a()
    {
        return new int[] { 2131492899, 2131493630, 2131493631, 2131492935, 2131493632, 2131492936, 2131492905, 2131493634, 2131493629, 2131493633 };
    }
}
