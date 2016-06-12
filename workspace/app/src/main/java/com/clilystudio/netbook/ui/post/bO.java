
package com.clilystudio.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;

final class bO implements View$OnClickListener {

    bO(MyTweetFragment MyTweetFragment1)
    {
        a = MyTweetFragment1;
    }

    private MyTweetFragment a;

    public final void onClick(View View1)
    {
        a.startActivity( ModifyUserInfoActivity.a( (Context) a.getActivity(), -1L ) );
    }
}
