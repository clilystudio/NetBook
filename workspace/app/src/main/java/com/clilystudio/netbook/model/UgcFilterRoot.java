package com.clilystudio.netbook.model;

public class UgcFilterRoot {
    private UgcFilterRoot$FilterGroup[] data;
    private boolean ok;

    public UgcFilterRoot$FilterGroup[] getData() {
        return this.data;
    }

    public void setData(UgcFilterRoot$FilterGroup[] arrugcFilterRoot$FilterGroup) {
        this.data = arrugcFilterRoot$FilterGroup;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class UgcFilterRoot$FilterGroup {
        private String name;
        private String[] tags;

        public String getName() {
            return this.name;
        }

        public void setName(String string) {
            this.name = string;
        }

        public String[] getTags() {
            return this.tags;
        }

        public void setTags(String[] arrstring) {
            this.tags = arrstring;
        }
    }
}
