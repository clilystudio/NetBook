package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import android.widget.PopupMenu$OnMenuItemClickListener;

import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.cd;

final class ap implements PopupMenu$OnMenuItemClickListener {

    ReaderActivity a;     // final access specifier removed

    ap(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final boolean onMenuItemClick(MenuItem MenuItem1) {
        switch (MenuItem1.getItemId()) {
            case 1067:
                ReaderActivity.L(a);
                break;
            case 1068:
                Intent Intent2 = BookInfoActivity.a((Context) a, ReaderActivity.M(a));

                a.startActivity(Intent2);
                break;
            case 1069:
                new cb((Activity) a, (cd) new aq(this)).a().show();
                break;
            default:
                break;
        }
        return true;
    }
}
