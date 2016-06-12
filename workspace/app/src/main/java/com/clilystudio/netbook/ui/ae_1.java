
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

final class ae implements View$OnClickListener {

    ae(BestReviewsFragment BestReviewsFragment1)
    {
        a = BestReviewsFragment1;
    }

    private BestReviewsFragment a;

    public final void onClick(View View1)
    {
        Intent Intent2 = BookPostTabActivity.a( (Context) a.getActivity(), a.getArguments().getString( "args_book_id" ), a.getArguments().getString( "args_book_title" ) );

        Intent2.putExtra( "extra_tab_default_index", 1 );
        a.startActivity( Intent2 );
    }
}
