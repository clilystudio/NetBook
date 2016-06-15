package com.clilystudio.netbook.reader.txt;

import java.util.Comparator;

final class O implements Comparator<T_Clazz> {
    O(ScanTxtFileActivity scanTxtFileActivity) {
    }

    @Override
    public final /* synthetic */ int compare(Object object, Object object2) {
        T_Clazz t = (T_Clazz) object;
        return (int) (((T_Clazz) object2).d() - t.d());
    }
}
