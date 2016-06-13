package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;

final class az
        implements DialogInterface.OnClickListener {
    az(UserFollowWeixinActivity userFollowWeixinActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
