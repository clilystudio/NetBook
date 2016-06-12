package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.model.BookShelf;

final class r implements DialogInterface$OnClickListener {

    private BookShelf a;
    private HomeShelfFragment b;
    r(HomeShelfFragment HomeShelfFragment1, BookShelf BookShelf2) {
        b = HomeShelfFragment1;
        a = BookShelf2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        switch (a.getType()) {
            case 1:
                if (int2 == 0) {
                    HomeShelfFragment.a(b, a);
                    return;
                } else {
                    if (int2 == 1) {
                        HomeShelfFragment.k(b);
                        return;
                    }
                    break;
                }
            case 0:
                if (int2 == 0) {
                    HomeShelfFragment.b(b, a);
                    return;
                } else if (int2 == 1) {
                    HomeShelfFragment.a(b, a.getBookRecord());
                    return;
                } else if (int2 == 2) {
                    HomeShelfFragment.b(b, a.getBookRecord());
                    return;
                } else if (int2 == 3) {
                    HomeShelfFragment.c(b, a.getBookRecord());
                    return;
                } else if (int2 == 4) {
                    HomeShelfFragment.c(b, a);
                    return;
                } else {
                    if (int2 == 5) {
                        b.d();
                        return;
                    }
                    break;
                }
            case 2:
                if (int2 == 0) {
                    HomeShelfFragment.b(b, a);
                    return;
                } else if (int2 == 1) {
                    HomeShelfFragment.c(b, a);
                    return;
                } else {
                    if (int2 == 2) {
                        b.d();
                        return;
                    }
                    break;
                }
            case 4:
                if (int2 == 0) {
                    HomeShelfFragment.b(b, a);
                    return;
                } else if (int2 == 1) {
                    HomeShelfFragment.b(b, a.getAlbum());
                    return;
                } else if (int2 == 2) {
                    HomeShelfFragment.c(b, a);
                    return;
                } else {
                    if (int2 == 3) {
                        b.d();
                        return;
                    }
                    break;
                }
            case 3:
            default:
                break;
        }
    }
}
