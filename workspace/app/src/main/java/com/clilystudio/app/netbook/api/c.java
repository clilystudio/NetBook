package com.clilystudio.app.netbook.api;

import com.clilystudio.app.netbook.db.DnsCacheRecord;

public final class c {
    private static c a;

    public static c a() {
        if (a == null)
            a = new c();
        return a;
    }

    public final void a(d paramd, String paramString) {
        try {
            DnsCacheRecord localDnsCacheRecord = new DnsCacheRecord();
            localDnsCacheRecord.setExpiredTime(paramd.b());
            localDnsCacheRecord.setHost(paramString);
            localDnsCacheRecord.setIp(paramd.a());
            localDnsCacheRecord.save();
            return;
        } finally {
            localObject =finally;
            throw localObject;
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.api.c
 * JD-Core Version:    0.6.2
 */