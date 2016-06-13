package com.clilystudio.netbook.model.mixtoc;

public class MixChapterRoot {
    private MixChapterResource[] chapterResources;
    private boolean ok;

    public MixChapterResource[] getChapterResources() {
        return this.chapterResources;
    }

    public void setChapterResources(MixChapterResource[] arrmixChapterResource) {
        this.chapterResources = arrmixChapterResource;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
