
package com.clilystudio.netbook.model.mixtoc;

import com.clilystudio.netbook.model.Toc;

public class MixTocRoot {

    private Toc mixToc;
    private boolean ok;

    public Toc getMixToc()
    {
        return mixToc;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setMixToc(Toc Toc1)
    {
        mixToc = Toc1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
