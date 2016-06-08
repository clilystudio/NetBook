package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChapterKeysRoot
        implements Serializable {
    private ChapterKeysRoot.ChapterKey[] keys;
    private boolean ok;

    public String getKey(String paramString) {
        if (this.keys != null && this.keys.length > 0) {
            for (ChapterKeysRoot.ChapterKey localChapterKey : this.keys) {
                if (localChapterKey.get_id().equals(paramString)) {
                    return localChapterKey.getKey();
                }
            }
        }
        return null;
    }

    public int getKeyLength() {
        if (this.keys == null)
            return 0;
        return this.keys.length;
    }

    public ChapterKeysRoot.ChapterKey[] getKeys() {
        return this.keys;
    }

    public void setKeys(ChapterKeysRoot.ChapterKey[] paramArrayOfChapterKey) {
        this.keys = paramArrayOfChapterKey;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class ChapterKey implements Serializable {
        private String _id;
        private String key;

        public String getKey() {
            return this.key;
        }

        public void setKey(String paramString) {
            this.key = paramString;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }
    }
}

