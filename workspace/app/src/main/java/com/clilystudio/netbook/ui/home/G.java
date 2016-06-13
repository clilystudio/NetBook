package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.model.BookShelf;

import java.util.Comparator;

final class G
        implements Comparator<BookShelf> {
    private /* synthetic */ int a;
    private /* synthetic */ HomeShelfFragment b;

    G(HomeShelfFragment homeShelfFragment, int n) {
        this.b = homeShelfFragment;
        this.a = n;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final /* synthetic */ int compare(Object object, Object object2) {
        BookShelf bookShelf = (BookShelf) object;
        BookShelf bookShelf2 = (BookShelf) object2;
        if (bookShelf.isTop() && !bookShelf2.isTop()) {
            return -1;
        }
        if (bookShelf2.isTop()) {
            if (!bookShelf.isTop()) return 1;
        }
        if (HomeShelfFragment.a(this.b, bookShelf, this.a) == HomeShelfFragment.a(this.b, bookShelf2, this.a)) {
            return 0;
        }
        if (HomeShelfFragment.a(this.b, bookShelf, this.a) > HomeShelfFragment.a(this.b, bookShelf2, this.a)) return -1;
        return 1;
    }
}
