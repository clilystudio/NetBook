package com.clilystudio.netbook.util;

import com.clilystudio.netbook.db.BookClickRecord;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class k {
    private String a;
    private String b;
    private BookClickRecord c;

    public k(String paramString) {
        this.a = paramString;
    }

    public final void a() {
        this.b = t.a(new Date());
        String str = am.h();
        List localList1 = BookClickRecord.getBookClickRecords(this.a);
        if ((localList1 != null) && (localList1.size() > 0)) {
            Iterator localIterator = localList1.iterator();
            while (localIterator.hasNext()) {
                BookClickRecord localBookClickRecord = (BookClickRecord) localIterator.next();
                if (a.b(this.b, 0) <= a.b(localBookClickRecord.today_time, 0))
                    continue;
                BookClickRecord.deleteByBookId(this.a);
            }
        }
        List localList2 = BookClickRecord.getBookClickRecords(this.a, this.b);
        if ((localList2 != null) && (localList2.size() > 0))
            this.c = ((BookClickRecord) localList2.get(0));
        for (boolean bool = this.c.isSendStatus(); ; bool = false) {
            if (!bool) {
                l locall = new l(this, 0);
                String[] arrayOfString = new String[3];
                arrayOfString[0] = this.b;
                arrayOfString[1] = str;
                arrayOfString[2] = this.a;
                locall.b(arrayOfString);
            }
            return;
        }
    }
}

