
package com.clilystudio.netbook.reader.txt;

import java.util.Collection;
import java.util.List;

final class P implements Runnable {

    P(ScanTxtFileActivity ScanTxtFileActivity1)
    {
        a = ScanTxtFileActivity1;
    }

    private ScanTxtFileActivity a;

    public final void run()
    {
        ScanTxtFileActivity.a( a ).a( (Collection) ScanTxtFileActivity.b( a ) );
        ScanTxtFileActivity.a( a, ScanTxtFileActivity.b( a ).size() );
    }
}
