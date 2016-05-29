package com.clilystudio.app.netbook.model.mixtoc;

public class MixChapterRoot {
    private MixChapterResource[] chapterResources;
    private boolean ok;

    public MixChapterResource[] getChapterResources() {
        return this.chapterResources;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setChapterResources(MixChapterResource[] paramArrayOfMixChapterResource) {
        this.chapterResources = paramArrayOfMixChapterResource;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.mixtoc.MixChapterRoot
 * JD-Core Version:    0.6.2
 */