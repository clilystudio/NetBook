package com.clilystudio.netbook.reader.txt;

import java.util.Comparator;

final class O implements Comparator {

    O(ScanTxtFileActivity ScanTxtFileActivity1) {
    }

    public final int compare(Object Object1, Object Object2) {
        T T3 = (T) Object1;

        return (int) (((T) Object2).d() - T3.d());
    }
}
