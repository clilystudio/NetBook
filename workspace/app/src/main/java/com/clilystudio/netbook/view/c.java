package com.clilystudio.netbook.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.cd;

public final class c {
    private Activity a;
    private cd b;

    public c(Activity activity, cd cd2) {
        this.a = activity;
        this.b = cd2;
    }

    public final Dialog a() {
        return new com.cocosw.bottomsheet.BottomSheet.Builder(this.a).sheet(R.menu.share_lucky_game).listener(new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                int n2 = 0;
                switch (which) {
                    case R.id.wx_moments:
                        n2 = 2;
                        break;
                    case R.id.qzone:
                        n2 = 4;
                        break;
                 }
                if (b != null) {
                    b.a(n2);
                }
            }
        }).show();
    }
}
