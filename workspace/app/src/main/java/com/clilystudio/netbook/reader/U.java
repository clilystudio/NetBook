package com.clilystudio.netbook.reader;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

final class U
        implements Y {
    private Map<Integer, ArrayList<e<ReaderChapter>>> b = new HashMap();
    private Map<Integer, Integer> c = new HashMap();

    U(Reader paramReader) {
    }

    public final void a(int paramInt, e<ReaderChapter> parame, boolean paramBoolean) {
        monitorenter;
        try {
            ArrayList localArrayList = (ArrayList) this.b.get(Integer.valueOf(paramInt));
            if (localArrayList == null) {
                localArrayList = new ArrayList();
                this.b.put(Integer.valueOf(paramInt), localArrayList);
            }
            localArrayList.add(parame);
            Integer localInteger;
            if (!paramBoolean) {
                Reader.a(this.a, 0, Reader.Type.CHAPTER);
                localInteger = (Integer) this.c.get(Integer.valueOf(paramInt));
                if (localInteger != null)
                    break label138;
                this.c.put(Integer.valueOf(paramInt), Integer.valueOf(1));
            }
            while (true) {
                Reader.e(this.a).execute(new V(this, paramInt, paramInt));
                return;
                label138:
                this.c.put(Integer.valueOf(paramInt), Integer.valueOf(1 + localInteger.intValue()));
            }
        } finally {
            monitorexit;
        }
        throw localObject;
    }
}

