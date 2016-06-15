package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChapterKeysRoot implements Serializable {
    private ChapterKey[] keys;
    private boolean ok;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String getKey(String string) {
        if (this.keys == null || this.keys.length == 0) {
            return null;
        }
        ChapterKey[] chapterKeys = this.keys;
        int n = chapterKeys.length;
        int n2 = 0;
        while (n2 < n) {
            ChapterKey chapterKey = chapterKeys[n2];
            if (chapterKey.get_id().equals(string)) {
                return chapterKey.getKey();
            }
            ++n2;
        }
        return null;
    }

    public int getKeyLength() {
        if (this.keys == null) {
            return 0;
        }
        return this.keys.length;
    }

    public ChapterKey[] getKeys() {
        return this.keys;
    }

    public void setKeys(ChapterKey[] chapterKeys) {
        this.keys = chapterKeys;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }


    public class ChapterKey implements Serializable {
        private String _id;
        private String key;

        public String getKey() {
            return this.key;
        }

        public void setKey(String string) {
            this.key = string;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }
}
