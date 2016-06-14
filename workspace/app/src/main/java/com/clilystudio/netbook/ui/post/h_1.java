package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

final class h
        extends c<String, ResultStatus> {
    private /* synthetic */ AbsPostActivity a;

    public h(AbsPostActivity absPostActivity, Activity activity, int n) {
        this.a = absPostActivity;
        super(activity, 2131034430);
    }

    private /* varargs */ ResultStatus a(String... arrstring) {
        try {
            ResultStatus resultStatus = b.b().j(arrstring[0], arrstring[1], arrstring[2]);
            return resultStatus;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        if (resultStatus != null) {
            if (resultStatus.isOk()) {
                e.a((Activity) this.a, "\u53d1\u5e03\u6210\u529f");
                this.a.o();
                AbsPostActivity.c(this.a);
                return;
            }
            if ("TOKEN_INVALID".equals(resultStatus.getCode())) {
                this.a.d();
                return;
            }
            if ("FORBIDDEN".equals(resultStatus.getCode())) {
                String string = resultStatus.getMsg();
                if (string != null) {
                    e.a((Activity) this.a, string);
                    return;
                }
                e.a((Activity) this.a, 2131034388);
                return;
            }
            e.a((Activity) this.a, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
