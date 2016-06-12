
package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class H implements DialogInterface$OnClickListener {

    H(AddReviewRatingActivity AddReviewRatingActivity1)
    {
        a = AddReviewRatingActivity1;
    }

    private AddReviewRatingActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        AddReviewRatingActivity.b( a );
        a.finish();
    }
}
