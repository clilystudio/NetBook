package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.BookSyncRecord$BookModifyType;
import com.clilystudio.netbook.model.SyncUploadResult;

public final class X
        extends e<Void, Void, SyncUploadResult> {
    private final ApiService a;
    private String b;
    private String c;
    private String[] d;
    private BookSyncRecord$BookModifyType e;

    public /* varargs */ X(String string, String string2, BookSyncRecord$BookModifyType bookModifyType, String... arrstring) {
        this.b = string;
        this.c = string2;
        this.e = bookModifyType;
        this.d = arrstring;
        b.a();
        this.a = b.b();
    }

    private String a() {
        if (this.d == null || this.d.length == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(this.d[0]);
        for (int i = 1; i < this.d.length; ++i) {
            stringBuffer.append("," + this.d[i]);
        }
        return stringBuffer.toString();
    }

    /*
     * Exception decompiling
     */
    private /* varargs */ SyncUploadResult b() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:486)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doClass(Main.java:46)
        // org.benf.cfr.reader.Main.main(Main.java:183)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        SyncUploadResult syncUploadResult = (SyncUploadResult) object;
        super.onPostExecute(syncUploadResult);
        if (syncUploadResult != null && syncUploadResult.isOk()) {
            for (String string : this.d) {
                BookSyncRecord.updateOrCreate(this.b, string, BookSyncRecord.getTypeId(BookSyncRecord$BookModifyType.SYNC_SUCCESS));
            }
        }
    }
}
