package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.widget.SAutoBgButton;

import butterknife.ButterKnife.Finder;

public class ReaderRandomEntranceActivity$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, ReaderRandomEntranceActivity paramReaderRandomEntranceActivity, Object paramObject) {
        paramReaderRandomEntranceActivity.mReadRandomBook = ((SAutoBgButton) paramFinder.findRequiredView(paramObject, 2131493156, "field 'mReadRandomBook'"));
    }

    public static void reset(ReaderRandomEntranceActivity paramReaderRandomEntranceActivity) {
        paramReaderRandomEntranceActivity.mReadRandomBook = null;
    }
}

