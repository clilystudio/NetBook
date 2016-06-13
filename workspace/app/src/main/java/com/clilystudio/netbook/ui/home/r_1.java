package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.BookShelf;

final class r
        implements DialogInterface.OnClickListener {
    private /* synthetic */ BookShelf a;
    private /* synthetic */ HomeShelfFragment b;

    r(HomeShelfFragment homeShelfFragment, BookShelf bookShelf) {
        this.b = homeShelfFragment;
        this.a = bookShelf;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        switch (this.a.getType()) {
            case 1: {
                if (n2 == 0) {
                    HomeShelfFragment.a(this.b, this.a);
                    return;
                }
                if (n2 != 1) return;
                {
                    HomeShelfFragment.k(this.b);
                    return;
                }
            }
            case 0: {
                if (n2 == 0) {
                    HomeShelfFragment.b(this.b, this.a);
                    return;
                }
                if (n2 == 1) {
                    HomeShelfFragment.a(this.b, this.a.getBookRecord());
                    return;
                }
                if (n2 == 2) {
                    HomeShelfFragment.b(this.b, this.a.getBookRecord());
                    return;
                }
                if (n2 == 3) {
                    HomeShelfFragment.c(this.b, this.a.getBookRecord());
                    return;
                }
                if (n2 == 4) {
                    HomeShelfFragment.c(this.b, this.a);
                    return;
                }
                if (n2 != 5) return;
                {
                    this.b.d();
                    return;
                }
            }
            case 2: {
                if (n2 == 0) {
                    HomeShelfFragment.b(this.b, this.a);
                    return;
                }
                if (n2 == 1) {
                    HomeShelfFragment.c(this.b, this.a);
                    return;
                }
                if (n2 != 2) return;
                {
                    this.b.d();
                    return;
                }
            }
            default: {
                return;
            }
            case 4:
        }
        if (n2 == 0) {
            HomeShelfFragment.b(this.b, this.a);
            return;
        }
        if (n2 == 1) {
            HomeShelfFragment.b(this.b, this.a.getAlbum());
            return;
        }
        if (n2 == 2) {
            HomeShelfFragment.c(this.b, this.a);
            return;
        }
        if (n2 != 3) return;
        {
            this.b.d();
            return;
        }
    }
}
