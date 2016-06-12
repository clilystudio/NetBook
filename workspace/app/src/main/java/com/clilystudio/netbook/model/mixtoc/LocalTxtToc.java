
package com.clilystudio.netbook.model.mixtoc;

import java.io.Serializable;
import java.util.List;

public class LocalTxtToc implements Serializable {

    public LocalTxtToc(long long1, List List3)
    {
        txtFileLength = long1;
        mChapterLinks = List3;
    }

    private List mChapterLinks;
    private long txtFileLength;

    public LocalTxtToc()
    {
    }

    public List getChapterLinks()
    {
        return mChapterLinks;
    }

    public long getTxtFileLength()
    {
        return txtFileLength;
    }

    public void setChapterLinks(List List1)
    {
        mChapterLinks = List1;
    }

    public void setTxtFileLength(long long1)
    {
        txtFileLength = long1;
    }
}
