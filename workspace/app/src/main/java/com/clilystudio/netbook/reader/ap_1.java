package com.clilystudio.netbook.reader;

import android.view.MenuItem;
import android.widget.PopupMenu;

import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.cb;

final class ap implements PopupMenu.OnMenuItemClickListener {
    final /* synthetic */ ReaderActivity a;

    ap(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final boolean onMenuItemClick(MenuItem var1_1) {
        switch (var1_1.getItemId()) {
            case R.id.menu_item_1: {
                ReaderActivity.L(this.a);
                **break;
            }
            case R.id.menu_item_2: {
                var2_2 = BookInfoActivity.a(this.a, ReaderActivity.M(this.a));
                this.a.startActivity(var2_2);
            }
            lbl8:
            // 3 sources:
            default:
            {
                return true;
            }
            case R.id.menu_item_3:
        }
        new cb(this.a, new aq(this)).a().show();
        return true;
    }
}
