.class final Lcom/umeng/update/net/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/umeng/update/net/k;

.field private d:Landroid/content/Context;

.field private e:Landroid/app/NotificationManager;

.field private synthetic f:Lcom/umeng/update/net/p;


# direct methods
.method public constructor <init>(Lcom/umeng/update/net/p;Landroid/content/Context;ILcom/umeng/update/net/k;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 696
    iput-object p1, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    .line 697
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 698
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    .line 699
    iget-object v0, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    .line 700
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 699
    iput-object v0, p0, Lcom/umeng/update/net/t;->e:Landroid/app/NotificationManager;

    .line 701
    iput p3, p0, Lcom/umeng/update/net/t;->a:I

    .line 702
    iput-object p4, p0, Lcom/umeng/update/net/t;->c:Lcom/umeng/update/net/k;

    .line 703
    iput-object p5, p0, Lcom/umeng/update/net/t;->b:Ljava/lang/String;

    .line 704
    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2715
    aget-object v0, p1, v4

    aget-object v1, p1, v3

    aget-object v2, p1, v5

    invoke-static {v0, v1, v2}, Lcom/umeng/update/util/DeltaUpdate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2716
    new-instance v1, Ljava/io/File;

    aget-object v2, p1, v5

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2717
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2718
    if-ne v0, v3, :cond_1

    .line 2719
    new-instance v1, Ljava/io/File;

    aget-object v2, p1, v3

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lu/a/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 2720
    iget-object v2, p0, Lcom/umeng/update/net/t;->c:Lcom/umeng/update/net/k;

    iget-object v2, v2, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2721
    invoke-static {}, Lcom/umeng/update/net/p;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file patch error"

    invoke-static {v0, v1}, Lu/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2725
    :cond_0
    invoke-static {}, Lcom/umeng/update/net/p;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file patch success"

    invoke-static {v1, v2}, Lu/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 2727
    :cond_1
    invoke-static {}, Lcom/umeng/update/net/p;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file patch error"

    invoke-static {v1, v2}, Lu/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 1735
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 1736
    iget-object v0, p0, Lcom/umeng/update/net/t;->b:Ljava/lang/String;

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/umeng/update/net/w;->a(Ljava/lang/String;I)Z

    .line 1738
    new-instance v0, Landroid/app/Notification;

    .line 1739
    const v1, 0x1080082

    .line 1740
    iget-object v2, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    .line 1741
    iget-object v3, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/sdk/b/b;->j(Landroid/content/Context;)I

    move-result v3

    .line 1740
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1738
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1743
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1744
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1745
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/update/net/t;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1746
    const-string v3, "application/vnd.android.package-archive"

    .line 1745
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1748
    iget-object v2, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 1747
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1750
    iget-object v3, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    .line 1751
    iget-object v4, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    invoke-static {v4}, Lu/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    .line 1753
    iget-object v6, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/sdk/b/b;->j(Landroid/content/Context;)I

    move-result v6

    .line 1752
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1750
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1755
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 1756
    iget-object v2, p0, Lcom/umeng/update/net/t;->e:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/umeng/update/net/t;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1757
    iget-object v0, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;)Z

    move-result v0

    .line 1758
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/update/net/t;->c:Lcom/umeng/update/net/k;

    iget-boolean v0, v0, Lcom/umeng/update/net/k;->h:Z

    if-nez v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/umeng/update/net/t;->e:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/umeng/update/net/t;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1760
    iget-object v0, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1762
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1763
    const-string v1, "filename"

    .line 1764
    iget-object v2, p0, Lcom/umeng/update/net/t;->b:Ljava/lang/String;

    .line 1763
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1767
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1768
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 1769
    iget v2, p0, Lcom/umeng/update/net/t;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 1770
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1773
    :try_start_0
    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    invoke-static {v0}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/p;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/t;->c:Lcom/umeng/update/net/k;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1774
    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    invoke-static {v0}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/p;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/t;->c:Lcom/umeng/update/net/k;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1776
    :cond_1
    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    iget-object v1, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/update/net/t;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    :goto_0
    return-void

    .line 1778
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    iget-object v1, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/update/net/t;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 1782
    :cond_2
    iget-object v0, p0, Lcom/umeng/update/net/t;->e:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/umeng/update/net/t;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1783
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1784
    const-string v1, "filename"

    .line 1785
    iget-object v2, p0, Lcom/umeng/update/net/t;->b:Ljava/lang/String;

    .line 1784
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1788
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1789
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1790
    iget v2, p0, Lcom/umeng/update/net/t;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 1791
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1794
    :try_start_1
    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    invoke-static {v0}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/p;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/t;->c:Lcom/umeng/update/net/k;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1795
    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    invoke-static {v0}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/p;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/t;->c:Lcom/umeng/update/net/k;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1797
    :cond_3
    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    iget-object v1, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/update/net/t;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1799
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/umeng/update/net/t;->f:Lcom/umeng/update/net/p;

    iget-object v1, p0, Lcom/umeng/update/net/t;->d:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/update/net/t;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 709
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 710
    return-void
.end method
