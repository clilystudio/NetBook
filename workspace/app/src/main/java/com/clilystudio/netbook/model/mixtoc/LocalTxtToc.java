package com.clilystudio.netbook.model.mixtoc;

import com.clilystudio.netbook.model.ChapterLink;

import java.io.Serializable;
import java.util.List;

public class LocalTxtToc implements Serializable {
    private List<ChapterLink> mChapterLinks;
    private long txtFileLength;

    public LocalTxtToc() {
    }

    public LocalTxtToc(long l, List<ChapterLink> list) {
        this.txtFileLength = l;
        this.mChapterLinks = list;
    }

    public List<ChapterLink> getChapterLinks() {
        return this.mChapterLinks;
    }

    public void setChapterLinks(List<ChapterLink> list) {
        this.mChapterLinks = list;
    }

    public long getTxtFileLength() {
        return this.txtFileLength;
    }

    public void setTxtFileLength(long l) {
        this.txtFileLength = l;
    }
}
