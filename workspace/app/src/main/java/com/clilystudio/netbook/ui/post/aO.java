package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class aO
        implements DialogInterface.OnClickListener {
    aO(BookTopicListFragment paramBookTopicListFragment) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        if (this.a.g != paramInt) {
            this.a.g = paramInt;
            BookTopicListFragment localBookTopicListFragment = this.a;
            ((BookPostTabActivity) this.a.getActivity());
            localBookTopicListFragment.f = BookPostTabActivity.f(this.a.g);
            this.a.a.setRefreshing();
        }
    }
}
