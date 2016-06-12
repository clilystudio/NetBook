
package com.clilystudio.netbook.model;

public class ChapterRoot {

    private Chapter chapter;
    private boolean ok;
    private int status;

    public Chapter getChapter()
    {
        return chapter;
    }

    public int getStatus()
    {
        return status;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setChapter(Chapter Chapter1)
    {
        chapter = Chapter1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setStatus(int int1)
    {
        status = int1;
    }
}
