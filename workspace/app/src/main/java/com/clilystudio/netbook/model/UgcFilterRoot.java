package com.clilystudio.netbook.model;

public class UgcFilterRoot {
    private UgcFilterRoot.FilterGroup[] data;
    private boolean ok;

    public UgcFilterRoot.FilterGroup[] getData() {
        return this.data;
    }

    public void setData(UgcFilterRoot.FilterGroup[] paramArrayOfFilterGroup) {
        this.data = paramArrayOfFilterGroup;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class FilterGroup {
        private String name;
        private String[] tags;

        public String getName() {
            return this.name;
        }

        public void setName(String paramString) {
            this.name = paramString;
        }

        public String[] getTags() {
            return this.tags;
        }

        public void setTags(String[] paramArrayOfString) {
            this.tags = paramArrayOfString;
        }
    }

}

