
package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.R;

public final class cO extends R {

    public cO(cM cM1)
    {
        a = cM1;
    }

    private cM a;

    protected final void a(Root Root1)
    {
        RelateBookRoot RelateBookRoot2 = (RelateBookRoot) Root1;

        cM.b( a ).a( RelateBookRoot2, cM.a( a ) );
    }

    protected final void b(Root Root1)
    {
        RelateBookRoot RelateBookRoot2 = (RelateBookRoot) Root1;

        cM.b( a ).a( RelateBookRoot2, cM.a( a ) );
    }
}
