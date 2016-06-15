package com.clilystudio.netbook.ui.ugcbook;

import java.util.Comparator;

final class f implements Comparator<UGCBookListRoot$UGCBook> {
    f(DraftUGCListFragment draftUGCListFragment) {
    }

    @Override
    public final /* synthetic */ int compare(Object object, Object object2) {
        UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook = (UGCBookListRoot$UGCBook) object;
        UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook2 = (UGCBookListRoot$UGCBook) object2;
        if (uGCBookListRoot$UGCBook.getUpdated().before(uGCBookListRoot$UGCBook2.getUpdated())) {
            return 1;
        }
        return -1;
    }
}
