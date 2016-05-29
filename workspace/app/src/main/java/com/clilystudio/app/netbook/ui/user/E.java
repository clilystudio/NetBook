package com.clilystudio.app.netbook.ui.user;

final class E
        implements j {
    E(MyTopicFragment paramMyTopicFragment) {
    }

    public final void a() {
        if ((MyTopicFragment.e(this.a) == null) || (MyTopicFragment.e(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            MyTopicFragment.i(this.a).setVisibility(0);
            if ((MyTopicFragment.f(this.a) != null) && (MyTopicFragment.f(this.a).getStatus() != AsyncTask.Status.FINISHED) && (!MyTopicFragment.f(this.a).isCancelled()))
                MyTopicFragment.f(this.a).cancel(true);
            MyTopicFragment.a(this.a, new F(this.a, (byte) 0));
            F localF = MyTopicFragment.e(this.a);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = MyTopicFragment.b(this.a);
            localF.b(arrayOfString);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.E
 * JD-Core Version:    0.6.2
 */