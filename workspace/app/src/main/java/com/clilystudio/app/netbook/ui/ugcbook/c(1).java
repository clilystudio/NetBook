package com.clilystudio.app.netbook.ui.ugcbook;

final class c
        implements Runnable {
    c(b paramb) {
    }

    public final void run() {
        if ((this.a.a.g != null) && (this.a.a.g.getStatus() != AsyncTask.Status.FINISHED) && (!this.a.a.g.isCancelled()))
            this.a.a.g.cancel(true);
        this.a.a.g = new e(this.a.a, (byte) 0);
        this.a.a.g.b(new String[0]);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.c
 * JD-Core Version:    0.6.2
 */