package com.clilystudio.netbook.reader;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.MixChapterResource;
import com.clilystudio.netbook.util.W;

final class br
        extends W<MixChapterResource> {
    private /* synthetic */ ReaderChapterDialog a;

    public br(ReaderChapterDialog readerChapterDialog, LayoutInflater layoutInflater) {
        this.a = readerChapterDialog;
        super(layoutInflater, 2130903271);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        MixChapterResource mixChapterResource = (MixChapterResource) object;
        ChapterLink chapterLink = mixChapterResource.getChapter();
        if (chapterLink == null) return;
        this.a(0, mixChapterResource.getHost());
        if (ReaderChapterDialog.a(this.a) != null && ReaderChapterDialog.a(this.a).equals(chapterLink.getLink())) {
            this.a(1, false);
            return;
        }
        this.a(1, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493636, 2131493637};
    }
}
