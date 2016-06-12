package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChapterKeysRoot implements Serializable {

    private ChapterKeysRoot$ChapterKey[] keys;
    private boolean ok;

    public String getKey(String String1) {
        if (keys != null && keys.length != 0) {
            ChapterKeysRoot$ChapterKey[] ChapterKey_1darray2 = keys;
            int int3 = ChapterKey_1darray2.length;
            int int4 = 0;

            while (int4 < int3) {
                ChapterKeysRoot$ChapterKey ChapterKey5 = ChapterKey_1darray2[int4];

                if (ChapterKey5.get_id().equals(String1))
                    return ChapterKey5.getKey();
                else
                    ++int4;
            }
        }
        return null;
    }

    public int getKeyLength() {
        if (keys == null)
            return 0;
        else
            return keys.length;
    }

    public ChapterKeysRoot$ChapterKey[] getKeys() {
        return keys;
    }

    public void setKeys(ChapterKeysRoot$ChapterKey[] ChapterKey_1darray1) {
        keys = ChapterKey_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
