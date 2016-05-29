package com.clilystudio.app.netbook.reader;

import android.view.View;

final class cZ
        implements View.OnClickListener {
    cZ(SettingWidget paramSettingWidget) {
    }

    public final void onClick(View paramView) {
        SettingWidget.d(this.a).setSelected(false);
        SettingWidget.e(this.a).setSelected(false);
        SettingWidget.f(this.a).setSelected(true);
        SettingWidget.b(this.a).a(3);
        SettingWidget.g(this.a).a();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cZ
 * JD-Core Version:    0.6.2
 */