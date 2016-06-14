package com.clilystudio.netbook.reader.txt;

import java.util.Comparator;

final class O implements Comparator<T> {
    O(ScanTxtFileActivity scanTxtFileActivity) {
    }

    @Override
    public final /* synthetic */ int compare(Object object, Object object2) {
        T t = (T) object;
        return (int) (((T) object2).d() - t.d());
    }
}
